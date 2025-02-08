-- Recognize Podfiles and podspcecs as ruby files
vim.filetype.add({
  filename = {
    ["Podfile"] = "ruby",
  },
  extension = {
    podspec = 'ruby',
  }
})

