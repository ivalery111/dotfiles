-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

require("nvim-tree").setup({
  disable_netrw = true,
  update_focused_file = {
    enable = true,
    update_cwd = true,
    ignore_list = {},
  },
  git = {
    enable = true,
    ignore = true,
    timeout = 500,
  },
  view = {
    -- width = 30,
    -- height = 30,
    -- hide_root_folder = false,
    side = "left",
    adaptive_size = true,
  },
  renderer = {
    highlight_git = true,
    icons = {
        show = {
            file = true,
            folder = true,
            folder_arrow = true,
            git = true,
        },
        glyphs = {
            default = "",
            symlink = "",
            git = {
                unstaged = "",
                staged = "S",
                unmerged = "",
                renamed = "➜",
                deleted = "",
                untracked = "U",
                ignored = "◌",
            },
            folder = {
                default = "",
                open = "",
                empty = "",
                empty_open = "",
                symlink = "",
            },
        }
    }
  },
  filters = {
    dotfiles = true,
  },
})
