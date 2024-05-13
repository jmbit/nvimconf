return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
  {
  	"williamboman/mason.nvim",
  	opts = {
  		ensure_installed = {
        "gopls",
        "rust-analyzer",
        "black",
        "debugpy",
        "mypy",
        "ruff-lsp",
        "pyright",
        "templ",
        "clangd",
        "cpplint",
        "cpptools",
        "cmake-language-server",
        "bash-language-server",
        "dockerfile-language-server",
        "gh",
        "go-debug-adapter",
        "html-lsp",
        "htmx-lsp",
        "htmlbeautifier",
        "helm-ls",
        "htmlhint",
        "jq",
        "jq-lsp",
        "json-lsp",
        "lua-language-server",
        "prettier",
        "pyright",
        "salt-lsp",
        "shellcheck",
        "shellharden",
        "sqls",
        "sqlfluff",
        "yaml-language-server",
        "ansible-language-server",
        "ansible-lint",
  		},
  	},
  },
  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim", "lua", "vimdoc",
       "html", "css", "go", "templ", "rust", "sql"
  		},
  	},
  },
}
