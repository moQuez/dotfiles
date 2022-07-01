require("nvim-tree").setup({
  view = {
    side = "right",
    width = 60,
  },
  filters = {
    exclude = { ".git/" },
  },
  git = {
    ignore = false,
  },
})
