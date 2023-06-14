vim.cmd([[
command! -nargs=1 TabsToSpaces lua ConvertTabsToSpaces(<args>)
]])

function ConvertTabsToSpaces(spaces)
    local numSpaces = tonumber(spaces)
    local lines = vim.api.nvim_buf_get_lines(0, 0, -1, false)
    for i, line in ipairs(lines) do
        lines[i] = string.gsub(line, "\t", string.rep(" ", numSpaces))
    end
    vim.api.nvim_buf_set_lines(0, 0, -1, false, lines)
end

