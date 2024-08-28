return {
  {
    "nvim-telescope/telescope.nvim",
    enabled = false,
    -- replace all Telescope keymaps with only one mapping
    keys = function()
      return {}
    end,
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    enabled = false,
    keys = function()
      return {}
    end,
  },
  {
    "akinsho/bufferline.nvim",
    enabled = false,
    keys = function()
      return {}
    end,
  },
}
