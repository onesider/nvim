local M = {}

function M.setup()
  local g = vim.g
  -- g.indent_blankline_char = "┊"
  vim.opt.listchars:append "eol: "
  g.indent_blankline_filetype_exclude = { "help", "packer" }
  g.indent_blankline_buftype_exclude = { "terminal", "nofile" }
  -- g.indent_blankline_show_trailing_blankline_indent = false

  require("indent_blankline").setup {
    show_trailing_blankline_indent = false,
    show_first_indent_level = true,
    use_treesitter = true,
    show_current_contex = true,
    show_end_off_line = true,
    space_char_blankline = " ",
    show_current_context = true,
    show_current_context_start = true,
  }
end

return M
