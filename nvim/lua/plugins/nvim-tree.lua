return {
  'nvim-tree/nvim-tree.lua',
  lazy = false,
  opts = {
    auto_reload_on_write = true,
    disable_netrw = true,
    hijack_netrw = true,
    hijack_cursor = false,
    hijack_unnamed_buffer_when_opening = false,
    sync_root_with_cwd = true,
    respect_buf_cwd = true,

    update_focused_file = {
      enable = true,
      update_root = true,
      ignore_list = {},
    },

    filters = {
      dotfiles = false,
      git_clean = false,
      no_buffer = false,
      custom = { '^.git$', 'node_modules', '.cache' },
      exclude = { '.gitignore', '.env' },
    },

    system_open = {
      cmd = nil,
      args = {},
    },

    diagnostics = {
      enable = true,
      show_on_dirs = true,
      debounce_delay = 50,
      icons = {
        hint = '󰌵',
        info = '󰋽',
        warning = '󰀪',
        error = '󰅚',
      },
      severity = {
        min = vim.diagnostic.severity.HINT,
        max = vim.diagnostic.severity.ERROR,
      },
    },

    -- View settings
    view = {
      adaptive_size = false,
      centralize_selection = false,
      width = 35,
      side = 'left',
      preserve_window_proportions = false,
      number = false,
      relativenumber = false,
      signcolumn = 'yes',
      float = {
        enable = false,
        quit_on_focus_loss = true,
        open_win_config = {
          relative = 'editor',
          border = 'rounded',
          width = 50,
          height = 30,
          row = 1,
          col = 1,
        },
      },
    },

    renderer = {
      add_trailing = false,
      group_empty = false,
      highlight_git = true,
      full_name = false,
      highlight_opened_files = 'none',
      highlight_modified = 'none',
      root_folder_label = ':~:s?$?/..?',
      indent_width = 2,
      indent_markers = {
        enable = true,
        inline_arrows = true,
        icons = {
          corner = '└',
          edge = '│',
          item = '│',
          bottom = '─',
          none = ' ',
        },
      },
      icons = {
        webdev_colors = true,
        git_placement = 'after',
        modified_placement = 'after',
        padding = ' ',
        symlink_arrow = ' -> ',
        show = {
          file = true,
          folder = true,
          folder_arrow = true,
          git = true,
          modified = true,
        },
        glyphs = {
          folder = {
            arrow_open = '',
            arrow_closed = '',
            default = '',
            open = '',
            empty = '',
            empty_open = '',
            symlink = '',
            symlink_open = '',
          },
          default = '󱓻',
          symlink = '󱓻',
          bookmark = '',
          modified = '',
          hidden = '󱙝',
          git = {
            unstaged = '×',
            staged = '',
            unmerged = '󰧾',
            untracked = '',
            renamed = '',
            deleted = '',
            ignored = '∅',
          },
        },
      },
      special_files = { 'Cargo.toml', 'Makefile', 'README.md', 'readme.md' },
      symlink_destination = true,
    },

    git = {
      enable = true,
      ignore = false,
      show_on_dirs = true,
      show_on_open_dirs = true,
      timeout = 400,
    },

    modified = {
      enable = true,
      show_on_dirs = true,
      show_on_open_dirs = true,
    },

    actions = {
      use_system_clipboard = true,
      change_dir = {
        enable = true,
        global = false,
        restrict_above_cwd = false,
      },
      expand_all = {
        max_folder_discovery = 300,
        exclude = { '.git', 'target', 'build' },
      },
      file_popup = {
        open_win_config = {
          col = 1,
          row = 1,
          relative = 'cursor',
          border = 'shadow',
          style = 'minimal',
        },
      },
      open_file = {
        quit_on_open = false,
        resize_window = true,
        window_picker = {
          enable = true,
          picker = 'default',
          chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890',
          exclude = {
            filetype = { 'notify', 'packer', 'qf', 'diff', 'fugitive', 'fugitiveblame' },
            buftype = { 'nofile', 'terminal', 'help' },
          },
        },
      },
      remove_file = {
        close_window = true,
      },
    },

    trash = {
      cmd = 'gio trash',
    },

    live_filter = {
      prefix = '[FILTER]: ',
      always_show_folders = true,
    },

    tab = {
      sync = {
        open = false,
        close = false,
        ignore = {},
      },
    },

    notify = {
      threshold = vim.log.levels.INFO,
    },

    log = {
      enable = false,
      truncate = false,
      types = {
        all = false,
        config = false,
        copy_paste = false,
        dev = false,
        diagnostics = false,
        git = false,
        profile = false,
        watcher = false,
      },
    },
  },
}
