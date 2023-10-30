return {
  "vimwiki/vimwiki",
  init = function()
    vim.g.vimwiki_list = {
      {
        path = "~/Repositories/MyWiki/",
        syntax = "markdown",
        ext = ".md",
      },
    }
  end,
}
