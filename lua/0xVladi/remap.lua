vim.g.mapleader = " "

vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

vim.keymap.set("v", "<leader>y", '"+y', { noremap = true })
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { noremap = true })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { noremap = true })


vim.api.nvim_create_autocmd({"FileType"}, {
  pattern = {"gitcommit", "gitrebase", "git"},
  callback = function()
    vim.api.nvim_buf_set_keymap(0, 'n', 'K', ':lua ShowGitCommitDiffInTmux()<CR>', {noremap = true, silent = true})
  end,
})

function ShowGitCommitDiffInTmux()
  local word = vim.fn.expand("<cword>")
  if #word == 40 and string.match(word, "%x+") then
    -- Command to execute git show, pipe to delta, and wait for a keypress in tmux
    local tmux_cmd = 'tmux new-window "git show ' .. word .. ' | delta; echo Press enter to continue...; read"'
    vim.cmd('! ' .. tmux_cmd)

  else
    vim.cmd('normal! K')
  end
end

