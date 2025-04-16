vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", [["_dP]])

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", "\"_d")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

vim.keymap.set("n", "<leader>pb", function()
    local bufname = vim.api.nvim_buf_get_name(0)
    if bufname:match("NetrwTree") or vim.bo.filetype == "netrw" then
        vim.cmd("bd") -- close the netrw buffer
    else
        vim.cmd("Vex") -- open netrw in vertical split
    end
end, { desc = "Toggle netrw vertical explorer" })

vim.keymap.set("n", "<leader>td", function()
  local current = vim.diagnostic.config().virtual_text
  vim.diagnostic.config({ virtual_text = not current })
end, { desc = "Toggle diagnostics virtual text" })

vim.keymap.set({ "n", "v" }, "<leader>f", function()
  require("conform").format({
    lsp_fallback = true,
    async = true,
    timeout_ms = 5000,
  })
end, { desc = "Format file or selection with conform.nvim" })


