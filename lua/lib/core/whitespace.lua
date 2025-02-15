local StringUtils = require("lib.core.stringutils")

local M = {}

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

  for i, line in ipairs(lines) do
    -- Strip whitespace from the line end
    local modifed, modified_line = StringUtils.strip_trailing_whitespace(line)
    if modifed == true then
      -- Indexing in vim.api in zero based in opposition to iterators in lua
      vim.api.nvim_buf_set_lines(bufnr, i - 1, i, false, {modified_line})
    end
  end

  -- local n_lines = #lines
  -- local last_line = lines[n_lines]
  -- if not is_line_empty(last_line) then
  --   table.insert(lines, "")
  --   change_made = true
  -- elseif n_lines > 1 then
  --   local sec_last_line = lines[n_lines - 1]
  --   while is_line_empty(sec_last_line) do
  --     table.remove(lines) -- remove last line
  --     sec_last_line = lines[#lines - 1] end
  --     change_made = true
  -- end
  --
end

M.apply_buffer_whitespace_mods = apply_buffer_whitespace_mods

return M

