-- prose-friendly settings for markdown buffers
vim.opt_local.wrap = true
vim.opt_local.linebreak = true    -- wrap at word boundaries, not mid-word
vim.opt_local.breakindent = true  -- wrapped lines keep list indentation
vim.opt_local.spell = true
vim.opt_local.spelllang = "en_us"
vim.opt_local.conceallevel = 2
vim.opt_local.tabstop = 2
vim.opt_local.shiftwidth = 2
vim.opt_local.softtabstop = 2

-- move by screen line on wrapped paragraphs (counts like 5j still use real lines)
vim.keymap.set({ "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'", { buffer = true, expr = true })
vim.keymap.set({ "n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'", { buffer = true, expr = true })

-- undo breakpoints: without these, a whole paragraph typed in one insert
-- session is undone at once. Now `u` undoes one sentence/clause at a time.
for _, ch in ipairs({ ",", ".", "!", "?", ";", ":" }) do
  vim.keymap.set("i", ch, ch .. "<C-g>u", { buffer = true })
end
