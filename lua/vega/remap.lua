local nnoremap = require("vega.keymap").nnoremap
local inoremap = require("vega.keymap").inoremap

nnoremap("<leader>pv", "<cmd>Ex<CR>")
nnoremap("<C-e>", ":source ~/.config/nvim/init.lua<CR>")

nnoremap("<leader>ff", "<cmd>Telescope find_files<CR>")
nnoremap("<leader>fh", "<cmd>Telescope find_files hidden=true<CR>")
nnoremap("<leader>fb", "<cmd>Telescope file_browser<CR>")
nnoremap("<leader>df", "<cmd>Telescope lsp_definitions<CR>")
nnoremap("<leader>rf", "<cmd>Telescope lsp_references<CR>")
nnoremap("<leader>lg", "<cmd>Telescope live_grep<CR>")

nnoremap("<leader>tt", "<cmd>TagbarToggle<CR>")
nnoremap("<leader>ta", "<cmd>TagbarOpenAutoClose<CR>")

nnoremap("<leader>hh", "<cmd>:lua require('harpoon.ui').toggle_quick_menu()<CR>")
nnoremap("<leader>hm", "<cmd>:lua require('harpoon.mark').add_file()<CR>")
nnoremap("<leader>hn", "<cmd>:lua require('harpoon.ui').nav_next()<CR>")
nnoremap("<leader>hp", "<cmd>:lua require('harpoon.ui').nav_prev()<CR>")

nnoremap("<leader>f", "<cmd>Format<CR>")
nnoremap("<leader>fw", "<cmd>FormatWrite<CR>")

nnoremap("<C-d>", "<C-d>zz")
nnoremap("<C-u>", "<C-u>zz")
nnoremap("<leader>o", "o<esc>")
nnoremap("<leader>O", "O<esc>")
nnoremap("x", '"_x')
nnoremap("dw", 'vb"_d')

nnoremap("<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>")
nnoremap("<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>")
nnoremap("<leader>k", "<cmd>lua vim.lsp.buf.hover()<CR>")

nnoremap("<leader>gs", "<cmd>Gitsigns preview_hunk<CR>")
nnoremap("<leader>ga", "<cmd>Gitsigns preview_hunk_inline<CR>")
nnoremap("<leader>gr", "<cmd>Gitsigns reset_hunk<CR>")
nnoremap("<leader>gp", "<cmd>Gitsigns prev_hunk<CR>")
nnoremap("<leader>gn", "<cmd>Gitsigns next_hunk<CR>")

nnoremap("<F5>", ":lua require'dap'.continue()<CR>")
nnoremap("<F10>", ":lua require'dap'.step_over()<CR>")
nnoremap("<F11>", ":lua require'dap'.step_into()<CR>")
nnoremap("<F12>", ":lua require'dap'.step_out()<CR>")
nnoremap("<leader>b", ":lua require'dap'.toggle_breakpoint()<CR>")
nnoremap("<leader>B", ":lua require'dap'.set_breakpoint(vim.fn.input('[Breakpoint condition > ]')<CR>")
nnoremap("<leader>dr", ":lua require'dap'.repl.open()<CR>")

nnoremap("<leader>dui", ":lua require'dapui'.toggle()<CR>")
