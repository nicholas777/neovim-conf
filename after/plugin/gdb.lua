function RunGdbWithInput()
    -- Prompt the user for a path
    local user_input_path = vim.fn.input("Enter the path: ", vim.fn.expand("%"))

    -- Check if the user_input_path is not empty
    if user_input_path and user_input_path ~= "" then
        -- Build the nvim-gdb command with the user input path
        local gdb_command = ':GdbStart gdb -q ' .. user_input_path

        -- Run the command using vim.cmd
        vim.cmd(gdb_command)
    else
        print("No path provided.")
    end
end

vim.api.nvim_set_keymap('n', '<leader>ds', [[:lua RunGdbWithInput()<CR>]], { noremap = true, silent = true })
