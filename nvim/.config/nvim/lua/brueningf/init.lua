require("brueningf.remap")
require("brueningf.set")
require("brueningf.plugins")

-- Filetypes --
vim.filetype.add({
  pattern = {
    ['.*%.blade%.php'] = 'blade',
  },
})


