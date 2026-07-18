return {
  -- nvim-lspconfig provides lsp/*.lua runtime files with preconfigured
  -- cmd, filetypes, and root_markers for many servers.
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    require("mason").setup()

    require("mason-lspconfig").setup({
      ensure_installed = {
        "lua_ls",
        "ts_ls",
        "html",
        "cssls",
        "jsonls",
      },
    })

    -- Override settings for lua_ls to recognize the `vim` global
    vim.lsp.config("lua_ls", {
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" },
          },
          workspace = {
            library = vim.api.nvim_get_runtime_file("", true),
            checkThirdParty = false,
          },
        },
      },
    })

    -- Enable all the servers
    vim.lsp.enable({ "lua_ls", "ts_ls", "html", "cssls", "jsonls" })

    -- Keymaps and buffer-local config when an LSP attaches
    -- NOTE: Neovim 0.11+ already provides these default keymaps:
    --   grr  = references
    --   grn  = rename
    --   gra  = code action
    --   gri  = implementation
    --   grt  = type definition
    --   K    = hover
    --   CTRL-S (insert) = signature help
    --
    -- Add any extra keymaps here:
    vim.api.nvim_create_autocmd("LspAttach", {
      group = vim.api.nvim_create_augroup("lsp-attach-keymaps", {}),
      callback = function(ev)
        local map = function(keys, func, desc)
          vim.keymap.set("n", keys, func, { buffer = ev.buf, desc = "LSP: " .. desc })
        end

        map("gd", vim.lsp.buf.definition, "Go to definition")
        map("gr", vim.lsp.buf.references, "Go to references")
        map("gl", vim.diagnostic.open_float, "Show line diagnostic")
      end,
    })
  end,
}
