-- Movement
--
-- Center on vertical movement
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Telescope
--
-- Pick from current buffers
vim.keymap.set("n", "<leader><space>",
  require("telescope.builtin").buffers,
  { desc = "[ ] Find existing buffers" })
-- Grep in open files
vim.keymap.set("n", "<leader>s/", function()
  require("telescope.builtin").live_grep({
    grep_open_files = true,
    prompt_title = "Live Grep in Open Files"
  })
end, { desc = "[S]earch [/] in open files" })
--
-- Find file tracked by Git
vim.keymap.set("n", "<leader>fg",
  require("telescope.builtin").git_files,
  { desc = "[f]ind [g]it file" })
--
-- Find file
-- TODO: hidden files? .gitignored?
vim.keymap.set("n", "<leader>ff",
  require("telescope.builtin").find_files,
  { desc = "[f]ind [f]iles" })
--
-- Search help
vim.keymap.set("n", "<leader>sh",
  require("telescope.builtin").help_tags,
  { desc = "[s]earch [h]elp" })
--
-- Resume last telescope picker
vim.keymap.set("n", "<leader>sr",
  require("telescope.builtin").resume,
  { desc = "[s]earch [r]esume" })

-- Tasks
--
-- Toggle task sidebar view
vim.keymap.set("n", "<leader>tt",
  require("overseer").toggle,
  { desc = "[t]ask [t]oggle" })
--
-- Build C++
vim.keymap.set("n", "<leader>tb", function()
  require("overseer").run_template({
    name = "cmake build",
  })
end, { desc = "[t]ask [b]uild" })
--
-- Clean build
vim.keymap.set("n", "<leader>tc", function()
  require("overseer").run_template({
    name = "cmake clean"
  })
end, { desc = "[t]ask [c]lean" })

-- Diagnostics
--
-- Next diagnostic
-- TODO: Next error, next warning
vim.keymap.set("n", "]d",
  vim.diagnostic.goto_next,
  { desc = "Go to next diagnostic" })
--
-- Previous diagnostic
vim.keymap.set("n", "[d",
  vim.diagnostic.goto_prev,
  { desc = "Go to prev diagnostic" })

-- TODO: Need to be defined "on attach"
-- -- LSP
-- --
-- -- Rename
-- vim.keymap.set("n", "<leader>rn",
--   vim.lsp.buf.rename,
--   { desc = "LSP: [r]e[n]ame" })
-- --
-- -- Code action
-- vim.keymap.set("n", "<leader>ca", function()
--   vim.lsp.buf.code_action({
--     context = {
--       only = { "quickfix", "refactor", "source" },
--     },
--   })
-- end, { desc = "LSP: [c]ode [a]ction" })
