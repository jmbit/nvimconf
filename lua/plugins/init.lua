return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

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
  {
    "olexsmir/gopher.nvim",
    ft = "go",
    config = function(_, opts)
      require("gopher").setup(opts)
    end,
    build = function()
      vim.cmd [[silent! GoInstallDeps]]
    end,
  },
  {
    "mrcjkb/rustaceanvim",
    version = "^4",
    ft = { "rust" },
    dependencies = "neovim/nvim-lspconfig",
  },
  {
    'saecki/crates.nvim',
    tag = 'stable',
    config = function()
        require('crates').setup()
    end,
  },
  {
    "rust-lang/rust.vim",
    ft = "rust",
    init = function ()
      vim.g.rustfmt_autosave = 1
    end
  },

}
