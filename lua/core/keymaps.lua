local map = vim.keymap.set

-- My keymaps
map("i", "jk", "<Esc>")
map("i", "ql", "<Esc>A")
map("i", "jl", "<Esc>o")
map("i", "kl", "<Esc>O")

-- Save Changes keymap with description
map({"n", "v"}, "<leader>w", ":w<CR>", {desc = "Save Changes"})
map("n", "<leader>q", ":q <cr>" , {desc ="Quit" })

map("n", "<leader>v", ":MarkdownPreview<CR>")
