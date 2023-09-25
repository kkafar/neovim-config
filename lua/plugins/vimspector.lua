return {
  {
    'puremourning/vimspector',
    lazy = true,
    config = function ()
      -- local vs = require('vimspector')
      local opts = { remap = false }
      vim.keymap.set("n", "<leader>dl", ":call vimspector#Launch()<CR>", opts)
      vim.keymap.set("n", "<leader>dr", ":call vimspector#Reset()<CR>", opts)
      vim.keymap.set("n", "<leader>dc", ":call vimspector#Continue()<CR>", opts)
      vim.keymap.set("n", "<leader>dt", ":call vimspector#ToggleBreakpoint()<CR>", opts)
      vim.keymap.set("n", "<leader>dT", ":call vimspector#ClearBreakpoints()<CR>", opts)
      vim.keymap.set("n", "<leader>dbl", ":call vimspector#ListBreakpoints()<CR>", opts)
      vim.keymap.set("n", "<leader>dfk", ":call vimspector#UpFrame()<CR>", opts)
      vim.keymap.set("n", "<leader>dfj", ":call vimspector#DownFrame()<CR>", opts)
      vim.keymap.set("n", "<leader>dbn", ":call vimspector#JumpToNextBreakpoint()<CR>", opts)
      vim.keymap.set("n", "<leader>dbp", ":call vimspector#JumpToPreviousBreakpoint()<CR>", opts)


      vim.keymap.set("n", "<leader>dl", "<Plug>VimspectorStepOver", {})
      vim.keymap.set("n", "<leader>dj", "<Plug>VimspectorStepInto", {})
      vim.keymap.set("n", "<leader>dk", "<Plug>VimspectorStepOut", {})
      vim.keymap.set("n", "<leader>dn", "<Plug>VimspectorRestart", {})
    end
  },
}
