return {}
-- return{
--   'nvim-telescope/telescope.nvim',
--   dependencies={{
--     'nvim-telescope/telescope-live-grep-args.nvim',
--     version='^1.0.0',
--   },
-- },
--   config=function()
--     local telescope=require('telescope')
--     telescope.setup({
--       defaults={
--         dynamic_preview_title=true,
--         path_display={'shorten'},
--         layout_config={
--           horizontal={
--             preview_width=0.5,
--             preivew_cutoff=30,
--           },
--           vertical={
--             preivew_height=0.5,
--             result_width=0.5,
--             preview_cutoff=20,
--             -- mirror =true,
--             -- prompt_position='top',
--           },
--           width={padding=0},
--           height={padding=0},
--         },
--       },
--     })
--     telescope.load_extension("live_grep_args")
--   end,
-- }

