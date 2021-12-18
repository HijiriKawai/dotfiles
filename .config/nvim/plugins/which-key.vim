lua <<EOF
require("which-key").setup {
  plugins = {
    marks = true,
    registers = true,
    presets = {
      operators = false,
      motions = false,
      text_objects = false,
      windows = true,
      nav = true,
      z = true,
      g = true,
    },
    spelling = { enabled = true, suggestions = 20 },
  },
  icons = {
    breadcrumb = "»",
    separator = "➜",
    group = "+",
  },
  window = {
    border = "single",
    position = "bottom",
    margin = { 1, 0, 1, 0 },
    padding = { 2, 2, 2, 2 },
    },
  layout = {
    height = { min = 4, max = 25 },
    width = { min = 20, max = 50 },
    spacing = 3,
  },
  opts = {
    mode = "n",
    prefix = "<leader>",
    buffer = nil,
    silent = true,
    noremap = true,
    nowait = true,
  },
  vopts = {
    mode = "v",
    prefix = "<leader>",
    buffer = nil,
    silent = true,
    noremap = true,
    nowait = true,
  },
}
EOF

nnoremap <silent> w :WhichKey<CR>
