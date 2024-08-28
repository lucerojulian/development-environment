return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    config = function()
      require("neo-tree").setup({
        popup_border_style = "rounded",
        window = {
          position = "left",
          width = 45,
        },
      })
    end,
  },
  {
    "echasnovski/mini.starter",
    version = false, -- wait till new 0.7.0 release to put it back on semver
    event = "VimEnter",
    opts = function()
      local starter = require("mini.starter")

      return {
        header = table.concat({
          "",
          " ███▄ ▄███▓ ██▀███           ▄▄▄██▀▀▀█    ██  ██▓     ██▓ ▄▄▄       ███▄    █",
          "▓██▒▀█▀ ██▒▓██ ▒ ██▒           ▒██   ██  ▓██▒▓██▒    ▓██▒▒████▄     ██ ▀█   █",
          "▓██    ▓██░▓██ ░▄█ ▒           ░██  ▓██  ▒██░▒██░    ▒██▒▒██  ▀█▄  ▓██  ▀█ ██▒",
          "▒██    ▒██ ▒██▀▀█▄          ▓██▄██▓ ▓▓█  ░██░▒██░    ░██░░██▄▄▄▄██ ▓██▒  ▐▌██▒",
          "▒██▒   ░██▒░██▓ ▒██▒ ██▓     ▓███▒  ▒▒█████▓ ░██████▒░██░ ▓█   ▓██▒▒██░   ▓██░",
          "░ ▒░   ░  ░░ ▒▓ ░▒▓░ ▒▓▒     ▒▓▒▒░  ░▒▓▒ ▒ ▒ ░ ▒░▓  ░░▓   ▒▒   ▓▒█░░ ▒░   ▒ ▒",
          "░  ░      ░  ░▒ ░ ▒░ ░▒      ▒ ░▒░  ░░▒░ ░ ░ ░ ░ ▒  ░ ▒ ░  ▒   ▒▒ ░░ ░░   ░ ▒░",
          "░      ░     ░░   ░  ░       ░ ░ ░   ░░░ ░ ░   ░ ░    ▒ ░  ░   ▒      ░   ░ ░",
          "       ░      ░       ░      ░   ░     ░         ░  ░ ░        ░  ░         ░",
          "                      ░",
          "",
          "",
        }, "\n"),
        items = {
          {
            name = "  Hope you have a wonderful day coding.",
            action = "FzfLua files",
            section = "¡Hi Julian, Good to see you back!",
          },
        },
        footer = "󰱼 Press ENTER to go to a file...",
        content_hooks = {
          starter.gen_hook.adding_bullet(" ", false),
          starter.gen_hook.aligning("left", "top"),
          starter.gen_hook.padding(10, 5),
        },
      }
    end,
    config = function(_, config)
      -- close Lazy and re-open when starter is ready
      vim.api.nvim_create_autocmd("User", {
        pattern = "MiniStarterOpened",
        callback = function()
          vim.notify("Welcome back Mr.Julian!", vim.log.levels.INFO)
          -- vim.cmd("Neotree buffers toggle left")
          -- vim.cmd("Neotree buffers focus")
          -- vim.cmd("Neotree filesystem toggle right")
          -- vim.cmd("wincmd h")
        end,
      })
      -- vim.api.nvim_create_autocmd("User", {
      -- pattern = "MiniStarterOpened",
      -- callback = function()
      -- Open nerdtree
      -- require("lazy").show()
      -- vim.cmd("Neotree reveal")
      -- vim.cmd("wincmd l")
      -- end,
      -- })

      local starter = require("mini.starter")
      starter.setup(config)
    end,
  },
}
