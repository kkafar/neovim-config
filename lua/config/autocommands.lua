--- @param line string
local function is_whitespace(line)
  return string.match(line, "^%s+$") ~= nil
end

--- @param line string
local function is_line_empty(line)
  return string.len(line) == 0
end

--- @param input table has following keys
---   • id: (number) autocommand id
---   • event: (string) name of the event that triggered the callback
---   • group: (number|nil) autocommand group id, if any
---   • match: (string) expanded value of |<amatch>|
---   • buf: (number) expanded value of |<abuf>|
---   • file: (string) expanded value of |<afile>|
---   • data: (any) arbitrary data passed from |nvim_exec_autocmds()|
local function apply_buffer_whitespace_mods(input)
  local bufnr = input.buf
  local lines = vim.api.nvim_buf_get_lines(bufnr, 0, -1, false)
  local change_made = false

  for i, line in ipairs(lines) do
    -- Strip whitespace from the line end
    if vim.endswith(line, " ") then
      lines[i] = string.gsub(line, "%s*$", "")
      change_made = true
    end
  end

  local n_lines = #lines
  local last_line = lines[n_lines]
  if not is_line_empty(last_line) then
    table.insert(lines, "")
    change_made = true
  elseif n_lines > 1 then
    local sec_last_line = lines[n_lines - 1]
    while is_line_empty(sec_last_line) do
      table.remove(lines) -- remove last line
      sec_last_line = lines[#lines - 1] end
      change_made = true
  end

  if change_made == true then
    vim.api.nvim_buf_set_lines(bufnr, 0, -1, false, lines)
  end
end

local whitespace = vim.api.nvim_create_augroup("whitespace", { clear = true })
vim.api.nvim_create_autocmd("BufWritePost", {
  group = whitespace,
  desc = "Remove redundant whitespace from Python files on write",
  pattern = "*.{py,lua}",
  callback = apply_buffer_whitespace_mods
})

