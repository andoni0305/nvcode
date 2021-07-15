--[[
O is the global options object

Formatters and linters should be
filled in as strings with either
a global executable or a path to
an executable
]]
-- THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT
-- general
O.format_on_save = true
O.completion.autocomplete = true
O.colorscheme = "tokyonight"
O.auto_close_tree = 0
O.default_options.wrap = true
O.default_options.timeoutlen = 100
O.leader_key = " "

O.lang.lua.autoformat = true
O.lang.tsserver.autoformat = true
O.lang.json.autoformat = true
O.lang.json.formatter = {
  exe = "prettier",
  args = { "--stdin-filepath", vim.api.nvim_buf_get_name(0), "--single-quote" },
}

-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
O.plugin.dashboard.active = true
O.plugin.zen.active = false
O.plugin.zen.window.height = 0.90
O.plugin.telescope.defaults.path_display = {}
O.plugin.terminal.active = true

-- if you don't want all the parsers change this to a table of the ones you want
O.treesitter.ensure_installed = "maintained"
O.treesitter.ignore_install = { "haskell" }
O.treesitter.highlight.enabled = true

O.plugin.dashboard.custom_header = {
  "              ^                      ", --
  "             /|\\                    ", --
  "            //|\\\\                  ", --
  "           ///|\\\\\\                ", --
  "          ////|\\\\\\\\              ", --
  "         /////|\\\\\\\\\\            ", --
  "        //////|\\\\\\\\\\\\          ", --
  "       ///////|\\\\\\\\\\\\\\        ", --
  "      ////////|\\\\\\\\\\\\\\\\      ", --
  "     /////////|\\\\\\\\\\\\\\\\\\    ", --
  "    //////////|\\\\\\\\\\\\\\\\\\\\  ", --
  "     '////////|\\\\\\\\\\\\\\\\'   ", --
  "       '//////|\\\\\\\\\\\\'       ", --
  "         '////|\\\\\\\\'           ", --
  "           '//|\\\\'               ", --
  "             '|'                   ", --
}

O.user_which_key = {
  r = {
    name = "Replace",
    f = {
      "<cmd>lua require('spectre').open_file_search()<cr>",
      "Current File",
    },
    p = { "<cmd>lua require('spectre').open()<cr>", "Project" },
  },
}

O.user_plugins = {
  -- Utility
  { "xabikos/vscode-javascript" },
  { "dsznajder/vscode-es7-javascript-react-snippets" }, -- Tmux integration
  "christoomey/vim-tmux-navigator", -- Syntax Hightlighting
  "StanAngeloff/php.vim", -- Miniyank
  {
    "bfredl/nvim-miniyank",
    config = function()
      vim.cmd [[
      map p <Plug>(miniyank-autoput)
      map P <Plug>(miniyank-autoPut)


      map <leader>n <Plug>(miniyank-cycle)
      map <leader>N <Plug>(miniyank-cycleback)

      ]]
      -- map <leader>p <Plug>(miniyank-startput)
      -- map <Leader>C <Plug>(miniyank-tochar)
      -- map <Leader>l <Plug>(miniyank-toline)
      -- map <Leader>b <Plug>(miniyank-toblock)
      -- map <leader>P <Plug>(miniyank-startPut)
    end,
  },
  { "folke/lsp-colors.nvim" },
  { "iamcco/markdown-preview.nvim" },
  { "andymass/vim-matchup" },
  {
    "windwp/nvim-spectre",
    config = function()
      require("spectre").setup()
    end,
  },
  { "folke/tokyonight.nvim" },
  {
    "ray-x/lsp_signature.nvim",
    config = function()
      require("lsp_signature").on_attach()
    end,
    event = "InsertEnter",
  },
  { "ggandor/lightspeed.nvim" },
  {
    "folke/todo-comments.nvim",
    requires = "nvim-lua/plenary.nvim",
    config = function()
      require("todo-comments").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end,
  },
  {
    "blackCauldron7/surround.nvim",
    config = function()
      vim.g.surround_prefix = "<leader>S"
      require("surround").setup {}
    end,
  },
}
