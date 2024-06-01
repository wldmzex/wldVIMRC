-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = LazyVim.safe_keymap_set
map({ "n", "x", "o" }, "r", "v:count == 0 ? 'gj' : 'j'", { desc = "Down", expr = true, silent = true })
map({ "n", "x", "o" }, "<Down>", "v:count == 0 ? 'gj' : 'j'", { desc = "Down", expr = true, silent = true })
map({ "n", "x", "o" }, "w", "v:count == 0 ? 'gk' : 'k'", { desc = "Up", expr = true, silent = true })
map({ "n", "x", "o" }, "<Up>", "v:count == 0 ? 'gk' : 'k'", { desc = "Up", expr = true, silent = true })
map({ "n", "x", "o" }, "R", "v:count == 0 ? '5gj' : '5j'", { desc = "5Down", expr = true, silent = true })
map({ "n", "x", "o" }, "W", "v:count == 0 ? '5gk' : '5k'", { desc = "5Up", expr = true, silent = true })
map({ "n", "x", "o" }, "a", "'h'", { desc = "Left", expr = true, silent = false, remap = true })
map({ "n", "x", "o" }, "s", "'l'", { desc = "Right", expr = true, silent = true, remap = true })
map({ "n", "x", "o" }, "A", "'5h'", { desc = "5Left", expr = true, silent = true })
map({ "n", "x", "o" }, "S", "'5l'", { desc = "5Right", expr = true, silent = true, remap = true })
map({ "i" }, "<C-r>", "<Down>", { desc = "Down", expr = true, silent = true })
map({ "i" }, "<c-w>", "'<up>'", { desc = "up", expr = true, silent = true })
map({ "n" }, "q", "':q<CR>'", { desc = "quit", expr = true, silent = true, remap = true })
--map({ "n" }, "<space>a", "':set nosplitright<CR>:vsplit<CR>'", { desc = "", expr = true, silent = true, remap = true })
--map({ "n" }, "<space>s", "':set splitright<CR>:vsplit<CR>'", { desc = "", expr = true, silent = true, remap = true })
--map({ "n" }, "<space>w", "':set nosplitbelow<CR>:split<CR>'", { desc = "", expr = true, silent = true, remap = true })
--map({ "n" }, "<space>r", "':set splitbelow<CR>:split<CR>'", { desc = "", expr = true, silent = true, remap = true })
map({ "n" }, "Q", "':wq<CR>'", { desc = "quit with save", expr = true, silent = true, remap = true })
--map({ "i" }, "<C-w>", "'<UP>'", { desc = "Up", expr = true, silent = false, remap = true })
--map({ "i" }, "<C-a>", "'<Left>'", { desc = "Left", expr = true, silent = false, remap = true })
--map({ "i" }, "<C-r>", "'<Down>'", { desc = "Down", expr = true, silent = false, remap = true })
--map({ "i" }, "<C-s>", "'<Right>'", { desc = "Right", expr = true, silent = false, remap = true })
map(
  { "n" },
  "<space>i",
  "':BufferLineCycleNext<CR>'",
  { desc = "bufferline-next", expr = true, silent = true, remap = true }
)
map(
  { "n" },
  "<space>n",
  "':BufferLineCyclePrev<CR>'",
  { desc = "bufferline-prev", expr = true, silent = true, remap = true }
)
map(
  { "n" },
  "<space>h",
  "':!make -C ../..<CR>:!make download -C ../..<CR>'",
  { desc = "", expr = true, silent = false, remap = true }
)
map({ "n", "x" }, "n", "'a'", { desc = "append", expr = true, silent = true, remap = true })
map({ "n", "x" }, "N", "'A'", { desc = "append line", expr = true, silent = true, remap = true })
map({ "n", "x" }, "<c-e>", "'n'", { desc = "search next", expr = true, silent = true, remap = true })
map({ "n", "x" }, "<c-u>", "'N'", { desc = "search prev", expr = true, silent = true, remap = true })
map({ "n", "x" }, "<c-n>", "':nohlsearch<CR>'", { desc = "nohlserach", expr = true, silent = true, remap = true })
map({ "n" }, "<space>e", "'<C-w>k'", { desc = "", expr = true, silent = false, remap = true })
map({ "n" }, "<space>d", "':bdelete<CR>'", { desc = "close current tab", expr = true, silent = true, remap = true })
map({ "n" }, "<space>u", "'<C-w>l'", { desc = "", expr = true, silent = false, remap = true })
map({ "n" }, "<C-k>", "':source $MYVIMRC<CR>'", { desc = "", expr = true, silent = false, remap = true })
map({ "n", "x", "o" }, "f", "'y'", { desc = "copy", expr = true, silent = true, remap = true })
map({ "n", "x" }, "y", "'q'", { desc = "paste", expr = true, silent = true, remap = true })
map({ "n", "x" }, "l", "'<C-r>'", { desc = "redo", expr = true, silent = false, remap = true })
--nmap <C-s> :w<CR>
map({ "x" }, "<c-c>", "'\"+y'", { desc = "", expr = true, silent = false, remap = true })
map({ "n" }, "<c-v>", "'\"+p'", { desc = "", expr = true, silent = false, remap = true })
map({ "n", "x", "o" }, "t", "'d'", { desc = "Right", expr = true, silent = true, remap = true })
vim.cmd("imap <c-a> <Left>")
vim.cmd("imap <c-r> <Down>")
vim.cmd("imap <c-s> <Right>")
vim.cmd("imap <c-w> <Up>")
vim.cmd("imap <c-t> <BS>")
vim.cmd("imap <c-n> <enter>")
vim.cmd("imap <C-e> (")
vim.cmd("imap <c-i> {")
vim.cmd("imap <c-o> ;")
vim.cmd("map <M-u> k")
vim.cmd("map <M-U> 10k")
vim.cmd("map <M-e> j")
vim.cmd("map <M-E> 10j")
