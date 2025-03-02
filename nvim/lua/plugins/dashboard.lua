return {
  {
    "snacks.nvim",
    opts = {
      dashboard = {
        sections = {
          {
            section = "terminal",
            cmd = "fortune -s | cowsay",
            padding = 1,
            indent = 8,
            random = 10,
            height = 30,
            width = 60,
          },
          { section = "startup" },
          {
            section = "terminal",
            cmd = "pokemon-colorscripts -r --no-title; sleep .1",
            indent = 4,
            height = 30,
            random = 1000,
            pane = 2,
          },
          function()
            local in_git = Snacks.git.get_root() ~= nil
            local cmds = {
              {
                icon = " ",
                title = "Git Status",
                cmd = "git --no-pager diff --stat -B -M -C",
                height = 10,
              },
            }
            return vim.tbl_map(function(cmd)
              return vim.tbl_extend("force", {
                pane = 2,
                section = "terminal",
                enabled = in_git,
                padding = 1,
                ttl = 5 * 60,
                indent = 3,
              }, cmd)
            end, cmds)
          end,
        },
      },
    },
  },
}
