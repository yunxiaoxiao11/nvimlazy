local utils = require("harpoon.test.utils")
local Buffer = require("harpoon.buffer")
local harpoon = require("harpoon")

local eq = assert.are.same
local be = utils.before_each(os.tmpname())

describe("harpoon", function()
    before_each(function()
        be()
        harpoon = require("harpoon")
    end)

    it("open the ui without any items in the list", function()
        harpoon.ui:toggle_quick_menu(harpoon:list())

        local bufnr = harpoon.ui.bufnr
        local win_id = harpoon.ui.win_id

        eq(vim.api.nvim_buf_is_valid(bufnr), true)
        eq(vim.api.nvim_win_is_valid(win_id), true)

        harpoon.ui:toggle_quick_menu()

        eq(vim.api.nvim_buf_is_valid(bufnr), false)
        eq(vim.api.nvim_win_is_valid(win_id), false)
        eq(harpoon.ui.bufnr, nil)
        eq(harpoon.ui.win_id, nil)
    end)

    it("delete file from ui contents and save", function()
        local created_files = utils.fill_list_with_files(3, harpoon:list())
        eq(harpoon:list():length(), 3)

        harpoon.ui:toggle_quick_menu(harpoon:list())
        table.remove(created_files, 2)
        Buffer.set_contents(harpoon.ui.bufnr, created_files)
        harpoon.ui:save()
        harpoon.ui:toggle_quick_menu()

        eq(harpoon:list():length(), 2)
        eq(harpoon:list():display(), created_files)
    end)

    it("add file from ui contents and save", function()
        local list = harpoon:list()
        local created_files = utils.fill_list_with_files(3, list)
        table.insert(created_files, os.tmpname())

        eq(list:length(), 3)

        harpoon.ui:toggle_quick_menu(list)
        Buffer.set_contents(harpoon.ui.bufnr, created_files)
        harpoon.ui:save()
        harpoon.ui:toggle_quick_menu()

        eq(list:length(), 4)
        eq(list:display(), created_files)
    end)

    it("edit ui but toggle should not save", function()
        local list = harpoon:list()
        local created_files = utils.fill_list_with_files(3, list)

        eq(list:length(), 3)

        harpoon.ui:toggle_quick_menu(list)
        Buffer.set_contents(harpoon.ui.bufnr, {})
        harpoon.ui:toggle_quick_menu()

        eq(list:length(), 3)
        eq(created_files, list:display())
    end)

    it("ui with replace_at", function()
        local one_f = os.tmpname()
        local one = utils.create_file(one_f, { "one" })
        local three_f = os.tmpname()
        local three = utils.create_file(three_f, { "three" })
        local context = { row = 1, col = 0 }

        eq(0, harpoon:list():length())
        vim.api.nvim_set_current_buf(three)

        harpoon:list():replace_at(3)
        eq(3, harpoon:list():length())

        vim.api.nvim_set_current_buf(one)
        harpoon:list():replace_at(1)
        eq(3, harpoon:list():length())

        harpoon.ui:toggle_quick_menu(harpoon:list())

        utils.key("<CR>")

        eq(3, harpoon:list():length())
        eq({
            { value = one_f, context = context },
            nil,
            { value = three_f, context = context },
        }, harpoon:list().items)
    end)

    it("using :q to leave harpoon should quit everything", function()
        harpoon.ui:toggle_quick_menu(harpoon:list())

        local bufnr = harpoon.ui.bufnr
        local win_id = harpoon.ui.win_id

        eq(vim.api.nvim_buf_is_valid(bufnr), true)
        eq(vim.api.nvim_win_is_valid(win_id), true)
        eq(vim.api.nvim_get_current_buf(), bufnr)

        vim.cmd([[ q! ]]) -- TODO: I shouldn't need q! here

        eq(vim.api.nvim_buf_is_valid(bufnr), false)
        eq(vim.api.nvim_win_is_valid(win_id), false)
        eq(harpoon.ui.bufnr, nil)
        eq(harpoon.ui.win_id, nil)
    end)

    it(
        "closing toggle_quick_menu with save_on_toggle should save contents",
        function()
            harpoon:setup({ settings = { save_on_toggle = true } })
            local list = harpoon:list()
            local created_files = utils.fill_list_with_files(3, list)

            harpoon.ui:toggle_quick_menu(list)
            table.remove(created_files, 2)
            Buffer.set_contents(harpoon.ui.bufnr, created_files)
            harpoon.ui:toggle_quick_menu()

            eq(list:length(), 2)
            eq(list:display(), created_files)
        end
    )

    it("exiting the ui with something like <C-w><C-w>", function()
        harpoon.ui:toggle_quick_menu(harpoon:list())

        local bufnr = harpoon.ui.bufnr
        local win_id = harpoon.ui.win_id

        eq(vim.api.nvim_buf_is_valid(bufnr), true)
        eq(vim.api.nvim_win_is_valid(win_id), true)
        eq(vim.api.nvim_get_current_buf(), bufnr)

        utils.key("<C-w><C-w>")

        eq(vim.api.nvim_buf_is_valid(bufnr), false)
        eq(vim.api.nvim_win_is_valid(win_id), false)
        eq(harpoon.ui.bufnr, nil)
        eq(harpoon.ui.win_id, nil)
    end)

    it("exiting the ui with q (see harpoon.buffer)", function()
        harpoon.ui:toggle_quick_menu(harpoon:list())

        local bufnr = harpoon.ui.bufnr
        local win_id = harpoon.ui.win_id

        eq(vim.api.nvim_buf_is_valid(bufnr), true)
        eq(vim.api.nvim_win_is_valid(win_id), true)
        eq(vim.api.nvim_get_current_buf(), bufnr)

        utils.key("q")

        eq(vim.api.nvim_buf_is_valid(bufnr), false)
        eq(vim.api.nvim_win_is_valid(win_id), false)
        eq(harpoon.ui.bufnr, nil)
        eq(harpoon.ui.win_id, nil)
    end)

    it("exiting the ui with <Esc> (see harpoon.buffer)", function()
        harpoon.ui:toggle_quick_menu(harpoon:list())

        local bufnr = harpoon.ui.bufnr
        local win_id = harpoon.ui.win_id

        eq(vim.api.nvim_buf_is_valid(bufnr), true)
        eq(vim.api.nvim_win_is_valid(win_id), true)
        eq(vim.api.nvim_get_current_buf(), bufnr)

        utils.key("<Esc>")

        eq(vim.api.nvim_buf_is_valid(bufnr), false)
        eq(vim.api.nvim_win_is_valid(win_id), false)
        eq(harpoon.ui.bufnr, nil)
        eq(harpoon.ui.win_id, nil)
    end)

    it("exiting the ui with something like :bprev / :bnext", function()
        harpoon.ui:toggle_quick_menu(harpoon:list())

        local bufnr = harpoon.ui.bufnr
        local win_id = harpoon.ui.win_id

        eq(vim.api.nvim_buf_is_valid(bufnr), true)
        eq(vim.api.nvim_win_is_valid(win_id), true)
        eq(vim.api.nvim_get_current_buf(), bufnr)

        -- Some people use keymaps that trigger these commands
        vim.cmd("bprev")

        eq(vim.api.nvim_buf_is_valid(bufnr), false)
        eq(vim.api.nvim_win_is_valid(win_id), false)
        eq(harpoon.ui.bufnr, nil)
        eq(harpoon.ui.win_id, nil)
    end)
end)
