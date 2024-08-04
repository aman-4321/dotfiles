-- Rosé Pine color palette
local rose_pine = {
	base = "#191724",
	mantle = "#1f1d2e",
	crust = "#26233a",
	surface0 = "#3a364f",
	surface1 = "#4a465e",
	surface2 = "#6e6a86",
	overlay0 = "#908caa",
	overlay1 = "#e0def4",
	overlay2 = "#eb6f92",
	subtext0 = "#ebbcba",
	subtext1 = "#f6c177",
	text = "#c4a7e7",
	lavender = "#c4a7e7",
	blue = "#9ccfd8",
	sapphire = "#31748f",
	sky = "#eb6f92",
	teal = "#9ccfd8",
	green = "#31748f",
	yellow = "#f6c177",
	peach = "#ebbcba",
	maroon = "#eb6f92",
	red = "#eb6f92",
	mauve = "#c4a7e7",
	pink = "#ebbcba",
	flamingo = "#f6c177",
	rosewater = "#f2e9e1",
}

local colorscheme = {
	foreground = rose_pine.text,
	background = rose_pine.base,
	cursor_bg = rose_pine.rosewater,
	cursor_border = rose_pine.rosewater,
	cursor_fg = rose_pine.crust,
	selection_bg = rose_pine.surface2,
	selection_fg = rose_pine.text,
	ansi = {
		rose_pine.base, -- black
		rose_pine.red, -- red
		rose_pine.green, -- green
		rose_pine.yellow, -- yellow
		rose_pine.blue, -- blue
		rose_pine.mauve, -- magenta/purple
		rose_pine.teal, -- cyan
		rose_pine.overlay1, -- white
	},
	brights = {
		rose_pine.overlay0, -- black
		rose_pine.red, -- red
		rose_pine.green, -- green
		rose_pine.yellow, -- yellow
		rose_pine.blue, -- blue
		rose_pine.mauve, -- magenta/purple
		rose_pine.teal, -- cyan
		rose_pine.overlay2, -- white
	},
	tab_bar = {
		background = "rgba(0, 0, 0, 0.4)",
		active_tab = {
			bg_color = rose_pine.surface2,
			fg_color = rose_pine.text,
		},
		inactive_tab = {
			bg_color = rose_pine.surface0,
			fg_color = rose_pine.subtext1,
		},
		inactive_tab_hover = {
			bg_color = rose_pine.surface0,
			fg_color = rose_pine.text,
		},
		new_tab = {
			bg_color = rose_pine.base,
			fg_color = rose_pine.text,
		},
		new_tab_hover = {
			bg_color = rose_pine.mantle,
			fg_color = rose_pine.text,
			italic = true,
		},
	},
	visual_bell = rose_pine.surface0,
	indexed = {
		[16] = rose_pine.peach,
		[17] = rose_pine.rosewater,
	},
	scrollbar_thumb = rose_pine.surface2,
	split = rose_pine.overlay0,
	compose_cursor = rose_pine.flamingo, -- nightbuild only
}

return colorscheme
