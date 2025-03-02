local dap = require('dap')

-- Configure GDB
dap.adapters.cppdbg = {
  type = 'executable',
  command = '/usr/bin/gdb',  -- Path to GDB
  name = "cppdbg"
}

dap.configurations.c = {
    {
        name = "Launch file",
        type = "cppdbg",
        request = "launch",
        program = function()
            return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
        end,
        cwd = '${workspaceFolder}',
        stopAtEntry = false,

    },
}

dap.configurations.cpp = dap.configurations.c

require("nvim-dap-virtual-text").setup()

-- require("dapui").setup()

-- Auto open/close DAP UI
-- dap.listeners.after.event_initialized["dapui_config"] = function()
  -- require("dapui").open()
-- end
-- dap.listeners.before.event_terminated["dapui_config"] = function()
  -- require("dapui").close()
-- end
-- dap.listeners.before.event_exited["dapui_config"] = function()
  -- require("dapui").close()
-- end

vim.keymap.set("n", "<F5>", function() dap.continue() end)
vim.keymap.set("n", "<F10>", function() dap.step_over() end)
vim.keymap.set("n", "<F11>", function() dap.step_into() end)
vim.keymap.set("n", "<F12>", function() dap.step_out() end)
vim.keymap.set("n", "<Leader>b", function() dap.toggle_breakpoint() end)
vim.keymap.set("n", "<Leader>B", function() dap.set_breakpoint(vim.fn.input('Breakpoint condition: ')) end)
