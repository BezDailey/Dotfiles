return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    -- Neovim 0.12+ uses vim.treesitter directly; highlight/indent are enabled by default.
    -- We just need to ensure parsers are installed.
    require("nvim-treesitter").setup({
      ensure_install = {
        "bash",
        "c",
        "css",
        "go",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "python",
        "rust",
        "tsx",
        "typescript",
        "vim",
        "vimdoc",
        "yaml",
      },
      auto_install = true,
    })
  end,
}
