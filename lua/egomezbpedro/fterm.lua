vim.keymap.set("t", "<esc><esc>", "<c-\\><c-n>")

local state = {
    floating = {
        buf = -1,
        win = -1
    }
}

local function create_floating_window(opts)
    -- Get the current editor dimensions
    local screen_width = vim.o.columns
    local screen_height = vim.o.lines

    -- Set default width and height (80% of screen size)
    local width = math.floor(screen_width * 0.8)
    local height = math.floor(screen_height * 0.8)

    -- Override defaults with user-provided options
    if opts and opts.width then
        width = opts.width
    end
    if opts and opts.height then
        height = opts.height
    end

    -- Calculate centered position
    local col = math.floor((screen_width - width) / 2)
    local row = math.floor((screen_height - height) / 2)

    -- Window configuration
    local win_opts = {
        relative = "editor", -- Position relative to the entire editor
        width = width,
        height = height,
        row = row,
        col = col,
        style = "minimal", -- No line numbers, sign column, etc.
        border = "rounded", -- Add a nice rounded border
    }

    -- Create a buffer and set it as a floating window
    local buf = nil

    if vim.api.nvim_buf_is_valid(opts.buf) then
        buf = opts.buf
    else
        buf = vim.api.nvim_create_buf(false, true) -- Create a scratch buffer
    end
    local win = vim.api.nvim_open_win(buf, true, win_opts) -- Open floating window

    return {buf = buf, win = win}
end

local toggle_term = function ()
    if not vim.api.nvim_win_is_valid(state.floating.win) then
        state.floating = create_floating_window{
            buf = state.floating.buf
        }
        if vim.bo[state.floating.buf].buftype ~= "terminal" then
            vim.cmd.terminal()
        end
    else
        vim.api.nvim_win_hide(state.floating.win)
    end
end

vim.api.nvim_create_user_command("Fterm", toggle_term , {})
vim.keymap.set({"n","t"}, "<C-t>", toggle_term)
