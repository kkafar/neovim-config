local StringUtil = {}

--- @param line string
function StringUtil.is_whitespace(line)
  return string.match(line, "^%s+$") ~= nil
end

--- @param line string
function StringUtil.is_empty(line)
  return string.len(line) == 0
end

--- @param line string
--- @return boolean # Whether any characters were removed
--- @return string # Modified string or empty one in case no modification was done
function StringUtil.strip_trailing_whitespace(line)
  if vim.endswith(line, " ") then
    local modified_line, _ = string.gsub(line, "%s*$", "")
    return true, modified_line
  end
  return false, ""
end

return StringUtil

