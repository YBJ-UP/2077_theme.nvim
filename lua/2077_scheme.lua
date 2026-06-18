local colors = require("2077_palette")

local G = {}

function G.set_2077_scheme()
	vim.cmd("highlight clear")
	vim.cmd("syntax reset")

	vim.o.background = "dark"
	vim.g.colors_name = "2077"
	local set = vim.api.nvim_set_hl

	set(0, "Normal", { bg = colors.bg, fg = colors.fg })
	set(0, "NormalNc", { bg = colors.bg_unfocused, fg = colors.fg_unfocused })

	set(0, "ColorColumn", { bg = colors.cursorLine })
	set(0, "Cursor", { bg = colors.fg, fg = colors.bg })

	set(0, "NormalFloat", { bg = "black" })
	set(0, "FloatBorder", { bg = "black", fg = colors.fg })

	set(0, "Pmenu", { bg = "black", fg = colors.fg })

	set(0, "StatusLine", { bg = colors.surface, fg = colors.primary_txt })
	set(0, "StatusLineNC", { bg = colors.surface, fg = colors.primary_txt })

	set(0, "TabLine", { bg = colors.surface, fg = colors.primary_txt })
	set(0, "TabLineFill", { bg = colors.surface, fg = colors.primary_txt })
	set(0, "TabLineSel", { bg = colors.visual, fg = colors.special })

	set(0, "Title", { fg = colors.strings, bold = true })

	set(0, "Substitute", { bg = "none", fg = colors.special })
	set(0, "IncSearch", { bg = "none", fg = colors.warn })
	set(0, "CurSearch", { bg = "none", fg = colors.warn })
	set(0, "Search", { bg = "none" , fg = colors.warn })

	set(0, "CursorLine", { bg = colors.cursorLine })
	set(0, "Visual", { bg = colors.visual })

	set(0, "Comment", { fg = colors.comments, italic = true })
	set(0, "Constant", { fg = colors.functions })
	set(0, "@Variable", { fg = colors.fg })
	set(0, "String", { fg = colors.strings })
	set(0, "Identifier", { fg = colors.fg })
	set(0, "Statement", { fg = colors.keywords })
	set(0, "Type", { fg = colors.keywords, italic = true })
	set(0, "Operator", { fg = colors.comments })
	set(0, "Macro", { fg = colors.fg })
	set(0, "Delimiter", { fg = colors.special })

	set(0, "Special", { fg = colors.fg })

	set(0, "PreProc", { fg = colors.special })

	set(0, "Keyword", { fg = colors.keywords })

	set(0, "Function", { fg = colors.functions })
	set(0, "TSFunction", { fg = colors.fg })

	set(0, "Error", { fg = colors.error, bold = true })
end

return G
