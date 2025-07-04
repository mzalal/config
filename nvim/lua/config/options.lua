local o = vim.opt

-- Indentation
o.autoindent = true -- Copy indent from current line when starting a new line
o.smartindent = true -- Enhances autoindent in some ways
o.breakindent = true -- Make wrapped lines have the same indentation as the start of the line

-- Search
o.hlsearch = true -- Highlight all matches of the last search
o.incsearch = true -- Show matches for partial searches
o.ignorecase = true -- Make searching case-insensitive
o.smartcase = true -- Make searching case-sensitive when the search text includes uppercase letters

-- Cursor
o.cursorline = true -- Highlight the line the cursor is on
o.scrolloff = 15 -- Set the number of lines to keep above and under the cursor

-- Splits
o.splitright = true -- Create new vertical splits on the right
o.splitbelow = true -- Create new horizontal splits on the bottom

-- Tab
o.tabstop = 4 -- Set how many spaces tab is equal to
o.shiftwidth = 4 -- Set the number of spaces for manual indentation
o.smarttab = true -- Enhances tab in some way
o.expandtab = true -- Convert tab into spaces

-- Command-line completion
o.wildmenu = true -- Use a menu for command-line completion
o.wildoptions = { "pum", "tagfile" } -- Set how command-lime completion menu should behave

-- Enable 24-bit RGB colors in the TUI
o.termguicolors = true

-- Do not use swap files
o.swapfile = false

-- Auto-update the file when it has been changed outside of Neovim
o.autoread = true

-- Make sure that Neovim uses text colors that look good on dark background
o.background = "dark"

-- Do not wrap lines
o.wrap = false

-- Make sure the last window/split always has a status line
o.laststatus = 2

-- Show the cursor position
o.ruler = true

-- Prevent the cursor from moving to the start of the line in some situations
o.startofline = false

-- Turn on the number line
o.number = true

-- Enable the use of the mouse in all modes except insert mode
o.mouse:remove("i")

-- Make Neovim and the OS share the clipboard
o.clipboard = "unnamedplus"

-- Do not show the mode since the status line is enabled and shows the mode as well
o.showmode = false

-- Always keep the sign column visible
o.signcolumn = "yes"

-- Decrease the wait time for key sequences from 1000ms to 500ms
o.timeoutlen = 500
