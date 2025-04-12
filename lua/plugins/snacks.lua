return {
  "snacks.nvim",
  opts = {
    dashboard = {
       keys = {
         { icon = " ", key = "s", desc = "Restore Session", acction = function() require("persistence").load({ last = true }) end, },
       },
    },
  },
}
