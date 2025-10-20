local M = {}

-- https://microsoft.github.io/language-server-protocol/specifications/lsp/3.17/specification/#formattingOptions
M.formatting_options = {
  insertSpaces = true,
  trimTrailingWhitespace = true,
  insertFinalNewline = true,
  trimFinalNewlines = true,
}

return M
