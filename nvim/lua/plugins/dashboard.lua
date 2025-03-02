return {
  {
    "snacks.nvim",
    opts = {
      dashboard = {
        sections = {
          {
            section = "terminal",
            cmd = "pokemon-colorscripts -r --no-title; sleep .1",
            height = 30,
            random = 1000,
          },
          { section = "startup" },
        },
      },
    },
  },
}
