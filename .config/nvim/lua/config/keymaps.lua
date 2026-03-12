-- Python: запуск текущего файла в терминале
vim.keymap.set("n", "<leader>rp", function()
  local file = vim.fn.expand("%")
  vim.cmd("TermExec cmd='python " .. file .. "'")
end, { desc = "Run Python file" })

-- Быстрый переход к следующей/предыдущей ошибке
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Prev diagnostic" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Next diagnostic" })

-- Organize imports через ruff
vim.keymap.set("n", "<leader>ci", function()
  vim.lsp.buf.code_action({
    apply = true,
    context = { only = { "source.organizeImports" } },
  })
end, { desc = "Organize imports" })
