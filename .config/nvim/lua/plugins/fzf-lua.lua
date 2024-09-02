return {
  "ibhagwan/fzf-lua",
  -- optional for icon support
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    -- calling `setup` is optional for customization
    require("fzf-lua").setup({
      grep = {
        rg_glob = true,
        glob_flag = "--glob",
        glob_separator = "%s%-%-",
        rg_opts = "--sort-files --hidden --column --line-number --no-heading "
          .. "--color=always --smart-case -g '!{.git,node_modules}/*' -g '!package-lock.json'",
      },
      files = {
        fd_opts = '--type f --hidden --exclude .git --exclude node_modules',
      },
    })
  end,
}
