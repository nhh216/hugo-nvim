-- Set leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize windows with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)
keymap("n", "<leader>bd", ":bdelete<CR>", opts)

-- Clear search highlights
keymap("n", "<leader>h", ":nohlsearch<CR>", opts)

-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "J", ":m '>+1<CR>gv=gv", opts)
keymap("v", "K", ":m '<-2<CR>gv=gv", opts)

-- Better paste
keymap("v", "p", '"_dP', opts)

-- Save file
keymap("n", "<C-s>", ":w<CR>", opts)
keymap("i", "<C-s>", "<Esc>:w<CR>a", opts)

-- Quit
keymap("n", "<leader>q", ":q<CR>", opts)
keymap("n", "<leader>Q", ":qa!<CR>", opts)

-- Split windows
keymap("n", "<leader>sv", ":vsplit<CR>", opts)
keymap("n", "<leader>sh", ":split<CR>", opts)
keymap("n", "<leader>sc", "<C-w>c", opts)

-- Navigate tabs
keymap("n", "<leader>tn", ":tabnew<CR>", opts)
keymap("n", "<leader>tc", ":tabclose<CR>", opts)
keymap("n", "<leader>to", ":tabonly<CR>", opts)
keymap("n", "<Tab>", ":tabnext<CR>", opts)
keymap("n", "<S-Tab>", ":tabprevious<CR>", opts)

-- Better line movement
keymap("n", "j", "gj", opts)
keymap("n", "k", "gk", opts)

-- Keep cursor centered when scrolling
keymap("n", "<C-d>", "<C-d>zz", opts)
keymap("n", "<C-u>", "<C-u>zz", opts)
keymap("n", "n", "nzzzv", opts)
keymap("n", "N", "Nzzzv", opts)

-- Quick fix list
keymap("n", "<leader>co", ":copen<CR>", opts)
keymap("n", "<leader>cc", ":cclose<CR>", opts)
keymap("n", "<leader>cn", ":cnext<CR>", opts)
keymap("n", "<leader>cp", ":cprev<CR>", opts)

-- File explorer (netrw)
keymap("n", "<leader>e", ":Explore<CR>", opts)
keymap("n", "<leader>E", ":Lexplore<CR>", opts)

-- Terminal
keymap("n", "<leader>tf", ":terminal<CR>", opts)
keymap("t", "<Esc>", "<C-\\><C-n>", opts)

-- Copy to system clipboard
keymap("v", "<leader>y", '"+y', opts)
keymap("n", "<leader>Y", '"+Y', opts)

-- Paste from system clipboard
keymap("n", "<leader>p", '"+p', opts)
keymap("n", "<leader>P", '"+P', opts)

-- Select all
keymap("n", "<C-a>", "ggVG", opts)

-- Increment/decrement numbers
keymap("n", "<leader>+", "<C-a>", opts)
keymap("n", "<leader>-", "<C-x>", opts)

-- Replace word under cursor
keymap("n", "<leader>rw", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>", { noremap = true })

-- Source current file
keymap("n", "<leader><leader>", ":source %<CR>", opts)

-- GitHub Copilot
keymap("i", "<C-j>", 'copilot#Accept("\\<CR>")', { expr = true, replace_keycodes = false })
keymap("i", "<C-]>", "<Plug>(copilot-dismiss)", { silent = true })
keymap("i", "<C-\\>", "<Plug>(copilot-suggest)", { silent = true })
keymap("i", "<M-]>", "<Plug>(copilot-next)", { silent = true })
keymap("i", "<M-[>", "<Plug>(copilot-previous)", { silent = true })
keymap("i", "<C-Right>", "<Plug>(copilot-accept-word)", { silent = true })
keymap("i", "<C-Down>", "<Plug>(copilot-accept-line)", { silent = true })

-- Copilot panel
keymap("n", "<leader>cp", ":Copilot panel<CR>", opts)

-- barbar.nvim keybindings
keymap("n", "<leader>1", ":BufferGoto 1<CR>", opts)
keymap("n", "<leader>2", ":BufferGoto 2<CR>", opts)
keymap("n", "<leader>3", ":BufferGoto 3<CR>", opts)
keymap("n", "<leader>4", ":BufferGoto 4<CR>", opts)
keymap("n", "<leader>5", ":BufferGoto 5<CR>", opts)
keymap("n", "<leader>6", ":BufferGoto 6<CR>", opts)
keymap("n", "<leader>7", ":BufferGoto 7<CR>", opts)
keymap("n", "<leader>8", ":BufferGoto 8<CR>", opts)
keymap("n", "<leader>9", ":BufferGoto 9<CR>", opts)
keymap("n", "<leader>0", ":BufferLast<CR>", opts)
keymap("n", "<leader>bp", ":BufferPin<CR>", opts)
keymap("n", "<leader>br", ":BufferReorder ", opts)
keymap("n", "<leader>bs", ":BufferSortByDirectory<CR>", opts)
keymap("n", "<leader>bl", ":BufferSortByLanguage<CR>", opts)
keymap("n", "<leader>bw", ":BufferWipeout<CR>", opts)
keymap("n", "<leader>bf", ":BufferCloseAllButCurrent<CR>", opts)
keymap("n", "<leader>ba", ":BufferCloseAllButPinned<CR>", opts)
keymap("n", "<leader>bc", ":BufferCloseAllButCurrentOrPinned<CR>", opts)
keymap("n", "<leader>bt", ":BufferCloseBuffersLeft<CR>", opts)
keymap("n", "<leader>by", ":BufferCloseBuffersRight<CR>", opts)
keymap("n", "<leader>bu", ":BufferMovePrevious<CR>", opts)
keymap("n", "<leader>bi", ":BufferMoveNext<CR>", opts)
keymap("n", "<leader>bn", ":BufferNext<CR>", opts)
keymap("n", "<leader>bh", ":BufferPrevious<CR>", opts)
keymap("n", "<leader>bo", ":BufferOrderByBufferNumber<CR>", opts)
keymap("n", "<leader>bg", ":BufferOrderByDirectory<CR>", opts)
keymap("n", "<leader>bl", ":BufferOrderByLanguage<CR>", opts)
keymap("n", "<leader>bs", ":BufferOrderByWindowNumber<CR>", opts)
keymap("n", "<leader>be", ":BufferClose<CR>", opts)
-- End of barbar.nvim keybindings
