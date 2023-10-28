local genghis = require("genghis")

vim.keymap.set("n", "<leader>yp", genghis.copyFilepath)
vim.keymap.set("n", "<leader>rf", genghis.renameFile)
vim.keymap.set("n", "<leader>nf", genghis.createNewFile)
vim.keymap.set("n", "<leader>df", genghis.trashFile)

vim.g.genghis_use_systemclipboard = true
