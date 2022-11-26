-- author: glepnr https://github.com/glepnir
-- date: 2022-07-02
-- License: MIT
local config = {}

function config.lspsaga()
  require("lspsaga").init_lsp_saga({
    move_in_saga = { prev = "k", next = "j" },
    saga_winblend = 20,
    diagnostic_header = { " ", " ", " ", "ﴞ " },
  })
end

function config.compe()
  vim.o.completeopt = "menuone,noselect"

  require("compe").setup({
    enabled = true,
    autocomplete = true,
    debug = false,
    min_length = 1,
    preselect = "enable",
    throttle_time = 80,
    source_timeout = 200,
    resolve_timeout = 800,
    incomplete_delay = 400,
    max_abbr_width = 100,
    max_kind_width = 100,
    max_menu_width = 100,
    documentation = {
      border = { "", "", "", " ", "", "", "", " " }, -- the border option is the same as `|help nvim_open_win|`
      winhighlight = "NormalFloat:CompeDocumentation,FloatBorder:CompeDocumentationBorder",
      max_width = 120,
      min_width = 60,
      max_height = math.floor(vim.o.lines * 0.3),
      min_height = 1,
    },

    source = {
      path = true,
      buffer = true,
      calc = true,
      nvim_lsp = true,
      nvim_lua = true,
      vsnip = true,
      ultisnips = true,
      luasnip = true,
      vim_dadbod_completion = true,
    },
  })
end
function config.copilot()
  vim.api.nvim_set_keymap("!", "<C-]>", 'copilot#Accept("<CR>")', { silent = true, expr = true, noremap=true })
  vim.api.nvim_set_var('copilot_assume_mapped', true)
  vim.g.copilot_filetypes = {markdown='v:true'}
end

function config.mason()
    require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})
end

return config

