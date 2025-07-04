local k = vim.keymap

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Escape insert mode
k.set("i", "jj", "<ESC>")

-- Saving the quitting
k.set("n", "<C-s>", "<cmd>w<cr>") -- Save the file
k.set("n", "<C-z>", "<cmd>wq<cr>") -- Save the file and quit
k.set("n", "<C-q>", "<cmd>q!<cr>") -- Quit without saving the file

-- Turn on search highlighting after a search
k.set("n", "<ESC>", "<cmd>nohlsearch<cr>")

-- Navigate buffers
k.set("n", ">", "<cmd>bnext<cr>") -- Go the next buffer
k.set("n", "<", "<cmd>bprevious<cr>") -- Go the previous buffer

-- Window splitting
k.set("n", "<leader>v", "<cmd>vsplit<cr>") -- Split window vertically
k.set("n", "<leader>s", "<cmd>split<cr>") -- Split window horizontally

-- Splits navigation
k.set("n", "<C-h>", "<C-w><C-h>")
k.set("n", "<C-l>", "<C-w><C-l>")
k.set("n", "<C-j>", "<C-w><C-j>")
k.set("n", "<C-k>", "<C-w><C-k>")

-- Splits resizing
k.set("n", "<A-l>", "<cmd>vertical resize +5<cr>") -- Increase split vertical size
k.set("n", "<A-h>", "<cmd>vertical resize -5<cr>") -- Decrease split vertical size
k.set("n", "<A-k>", "<cmd>resize +5<cr>") -- Increase split horizontal size
k.set("n", "<A-j>", "<cmd>resize -5<cr>") -- Decrease split horizontal size
