-- author: glepnr https://github.com/glepnir
-- date: 2022-07-02
-- License: MIT

local config = {}

function config.telescope()
  if not packer_plugins['plenary.nvim'].loaded then
    vim.cmd([[packadd plenary.nvim]])
    vim.cmd([[packadd popup.nvim]])
    vim.cmd([[packadd telescope-fzy-native.nvim]])
    vim.cmd([[packadd telescope-file-browser.nvim]])
  end
  require('telescope').setup({
    defaults = {
      layout_config = {
        horizontal = { prompt_position = 'top', results_width = 0.6 },
        vertical = { mirror = false },
      },
      sorting_strategy = 'ascending',
      file_previewer = require('telescope.previewers').vim_buffer_cat.new,
      grep_previewer = require('telescope.previewers').vim_buffer_vimgrep.new,
      qflist_previewer = require('telescope.previewers').vim_buffer_qflist.new,
    },
    extensions = {
      fzy_native = {
        override_generic_sorter = false,
        override_file_sorter = true,
      },
      file_browser = {
        hidden = true,
        respect_gitignore = true,
      },
    },
  })
  require('telescope').load_extension('neoclip')
  require('telescope').load_extension('fzy_native')
  require('telescope').load_extension('file_browser')
  if vim.fn.executable('goimpl') > 0 then
    require('telescope').load_extension('goimpl')
  end
end

function config.autopairs()
  require('nvim-autopairs').setup()
end

function config.neoclip()
  require('neoclip').setup({
    history = 1000,
    filter = nil,
    preview = true,
    default_register = '"',
    content_spec_column = false,
    on_paste = {
      set_reg = false,
    },
    keys = {
      telescope = {
        i = {
          select = '<cr>',
          paste = '<c-p>',
          paste_behind = '<c-k>',
        },
        n = {
          select = '<cr>',
          paste = 'p',
          paste_behind = 'P',
        },
      },
    },
  })
end

function config.autosave()
  require('auto-save').setup({
    enabled = true,
  })
end

function config.neoscroll()
  require('neoscroll').setup()
end

function config.toggleterm()
  require('toggleterm').setup({ shell = '/bin/zsh' })
  if vim.fn.executable('lazygit') > 0 then
    vim.cmd(
      [[command! Lazygit lua require("toggleterm.terminal").Terminal:new({cmd="lazygit", hidden=true, direction="float"}):toggle()]]
    )
  end
end

function config.tabset()
  require('tabset').setup({
    defaults = {
      tabwidth = 4,
      expandtab = true,
    },
    languages = {
      {
        filetypes = {
          'javascript',
          'typescript',
          'javascriptreact',
          'typescriptreact',
          'json',
          'yaml',
          'haskell',
          'lhaskell',
        },
        config = {
          tabwidth = 2,
        },
      },
    },
  })
end

function config.diffview()
  local actions = require('diffview.actions')

  require('diffview').setup({
    diff_binaries = false, -- Show diffs for binaries
    enhanced_diff_hl = false, -- See ':h diffview-config-enhanced_diff_hl'
    git_cmd = { 'git' }, -- The git executable followed by default args.
    use_icons = true, -- Requires nvim-web-devicons
    icons = { -- Only applies when use_icons is true.
      folder_closed = '',
      folder_open = '',
    },
    signs = {
      fold_closed = '',
      fold_open = '',
    },
    file_panel = {
      listing_style = 'tree', -- One of 'list' or 'tree'
      tree_options = { -- Only applies when listing_style is 'tree'
        flatten_dirs = true, -- Flatten dirs that only contain one single dir
        folder_statuses = 'only_folded', -- One of 'never', 'only_folded' or 'always'.
      },
      win_config = { -- See ':h diffview-config-win_config'
        position = 'left',
        width = 35,
      },
    },
    file_history_panel = {
      log_options = { -- See ':h diffview-config-log_options'
        single_file = {
          diff_merges = 'combined',
        },
        multi_file = {
          diff_merges = 'first-parent',
        },
      },
      win_config = { -- See ':h diffview-config-win_config'
        position = 'bottom',
        height = 16,
      },
    },
    commit_log_panel = {
      win_config = {}, -- See ':h diffview-config-win_config'
    },
    default_args = { -- Default args prepended to the arg-list for the listed commands
      DiffviewOpen = {},
      DiffviewFileHistory = {},
    },
    hooks = {}, -- See ':h diffview-config-hooks'
    keymaps = {
      disable_defaults = false, -- Disable the default keymaps
      view = {
        -- The `view` bindings are active in the diff buffers, only when the current
        -- tabpage is a Diffview.
        ['<tab>'] = actions.select_next_entry, -- Open the diff for the next file
        ['<s-tab>'] = actions.select_prev_entry, -- Open the diff for the previous file
        ['gf'] = actions.goto_file, -- Open the file in a new split in the previous tabpage
        ['<C-w><C-f>'] = actions.goto_file_split, -- Open the file in a new split
        ['<C-w>gf'] = actions.goto_file_tab, -- Open the file in a new tabpage
        ['<leader>e'] = actions.focus_files, -- Bring focus to the files panel
        ['<leader>b'] = actions.toggle_files, -- Toggle the files panel.
      },
      file_panel = {
        ['j'] = actions.next_entry, -- Bring the cursor to the next file entry
        ['<down>'] = actions.next_entry,
        ['k'] = actions.prev_entry, -- Bring the cursor to the previous file entry.
        ['<up>'] = actions.prev_entry,
        ['<cr>'] = actions.select_entry, -- Open the diff for the selected entry.
        ['o'] = actions.select_entry,
        ['<2-LeftMouse>'] = actions.select_entry,
        ['-'] = actions.toggle_stage_entry, -- Stage / unstage the selected entry.
        ['S'] = actions.stage_all, -- Stage all entries.
        ['U'] = actions.unstage_all, -- Unstage all entries.
        ['X'] = actions.restore_entry, -- Restore entry to the state on the left side.
        ['R'] = actions.refresh_files, -- Update stats and entries in the file list.
        ['L'] = actions.open_commit_log, -- Open the commit log panel.
        ['<c-b>'] = actions.scroll_view(-0.25), -- Scroll the view up
        ['<c-f>'] = actions.scroll_view(0.25), -- Scroll the view down
        ['<tab>'] = actions.select_next_entry,
        ['<s-tab>'] = actions.select_prev_entry,
        ['gf'] = actions.goto_file,
        ['<C-w><C-f>'] = actions.goto_file_split,
        ['<C-w>gf'] = actions.goto_file_tab,
        ['i'] = actions.listing_style, -- Toggle between 'list' and 'tree' views
        ['f'] = actions.toggle_flatten_dirs, -- Flatten empty subdirectories in tree listing style.
        ['<leader>e'] = actions.focus_files,
        ['<leader>b'] = actions.toggle_files,
      },
      file_history_panel = {
        ['g!'] = actions.options, -- Open the option panel
        ['<C-A-d>'] = actions.open_in_diffview, -- Open the entry under the cursor in a diffview
        ['y'] = actions.copy_hash, -- Copy the commit hash of the entry under the cursor
        ['L'] = actions.open_commit_log,
        ['zR'] = actions.open_all_folds,
        ['zM'] = actions.close_all_folds,
        ['j'] = actions.next_entry,
        ['<down>'] = actions.next_entry,
        ['k'] = actions.prev_entry,
        ['<up>'] = actions.prev_entry,
        ['<cr>'] = actions.select_entry,
        ['o'] = actions.select_entry,
        ['<2-LeftMouse>'] = actions.select_entry,
        ['<c-b>'] = actions.scroll_view(-0.25),
        ['<c-f>'] = actions.scroll_view(0.25),
        ['<tab>'] = actions.select_next_entry,
        ['<s-tab>'] = actions.select_prev_entry,
        ['gf'] = actions.goto_file,
        ['<C-w><C-f>'] = actions.goto_file_split,
        ['<C-w>gf'] = actions.goto_file_tab,
        ['<leader>e'] = actions.focus_files,
        ['<leader>b'] = actions.toggle_files,
      },
      option_panel = {
        ['<tab>'] = actions.select_entry,
        ['q'] = actions.close,
      },
    },
  })
end

function config.gitsigns()
  require('gitsigns').setup({
    current_line_blame = true,
    linehl = false,
    numhl = true,

    signs = {
      add = { text = '▎' },
      change = { text = '▎' },
      delete = { text = 'ﬠ' },
      topdelete = { text = 'ﬢ' },
    },
  })
end

function config.trouble()
  require('trouble').setup()
end

function config.leetcode()
  vim.g.leetcode_browser = 'chrome'
  vim.g.leetcode_solution_filetype = 'golang'
end

function config.todo()
  require('todo-comments').setup({
    search = {
      command = 'rg',
      args = {
        '--color=never',
        '--no-heading',
        '--with-filename',
        '--line-number',
        '--column',
        '--glob=!vendor',
        '--glob=!node_modules',
      },
    },
  })
end

return config
