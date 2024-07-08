return {
  "iamcco/markdown-preview.nvim",
  event = "VeryLazy",
  build = "cd app && npm install",
  ft = "markdown",
  lazy = true,
  keys = { { "<leader>mp", "<cmd>MarkdownPreviewToggle<cr>", desc = "Markdown Preview" } },
  config = function()
    vim.g.mkdp_auto_close = true
    vim.g.mkdp_open_to_the_world = false
    vim.g.mkdp_open_ip = "127.0.0.1"
    vim.g.mkdp_port = "8888"
    -- vim.g.mkdp_browser = "/mnt/c/Users/夜小雨/AppData/Local/Mozilla Firefox/firefox.exe"
    vim.g.mkdp_browser = "sh ~/open_firefox.sh"
    -- vim.g.mkdp_browserfunc = 'http://127.0.0.1:8888/page/1'
    vim.g.mkdp_echo_preview_url = true
    vim.g.mkdp_page_title = "${name}"
  end,
}
