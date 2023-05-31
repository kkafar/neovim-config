local function vcs()
  local branch_sign = ''
  local git_info = vim.b.gitsigns_status_dict

  if not git_info or git_info.head == '' then
    return ''
  end

  local added = git_info.added and ('+' .. git_info.added .. ' ') or ''
  local modified = git_info.changed and ('~' .. git_info.changed .. ' ') or ''
  local removed = git_info.removed and ('-' .. git_info.removed .. ' ') or ''
  local pad = ((added ~= '') or (removed ~= '') or (modified ~= '')) and ' ' or ''
  local diff_str = string.format('%s%s%s%s', added, removed, modified, pad)
  return string.format('%s%s %s ', diff_str, branch_sign, git_info.head)
end

local function status_line()
  local mode = "%-5{%v:lua.string.upper(v:lua.vim.fn.mode())%}"
  local file_name = "%-.16t"
  local buf_nr = "[%n]"
  local modified = " %-m"
  local file_type = " %y"
  -- local right_align = "%="
  local line_no = " %10([%l:%v/%L%)]"
  local pct_thru_file = "%5p%%"

  return string.format(
    "%s%s%s%s%s%s%s",
    mode,
    file_name,
    buf_nr,
    modified,
    file_type,
    line_no,
    pct_thru_file
  )
end

vim.opt.statusline = status_line()
