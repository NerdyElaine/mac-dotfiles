local catppuccin_palette = {
	rosewater = "#f2d5cf",
	flamingo = "#eebebe",
	pink = "#f4b8e4",
	mauve = "#ca9ee6",
	red = "#e78284",
	maroon = "#ea999c",
	peach = "#ef9f76",
	yellow = "#e5c890",
	green = "#a6d189",
	teal = "#81c8be",
	sky = "#99d1db",
	sapphire = "#85c1dc",
	blue = "#8caaee",
	lavender = "#babbf1",
	text = "#c6d0f5",
	subtext1 = "#b5bfe2",
	subtext0 = "#a5adce",
	overlay2 = "#949cbb",
	overlay1 = "#838ba7",
	overlay0 = "#737994",
	surface2 = "#626880",
	surface1 = "#51576d",
	surface0 = "#414559",
	base = "#303446",
	mantle = "#292c3c",
	crust = "#232634",
}

-- Plugins
require("full-border"):setup({
	type = ui.Border.ROUNDED,
})

require("zoxide"):setup({
	update_db = true,
})

require("session"):setup({
	sync_yanked = true,
})

require("searchjump"):setup({
	unmatch_fg = catppuccin_palette.overlay0,
	match_str_fg = catppuccin_palette.peach,
	match_str_bg = catppuccin_palette.base,
	first_match_str_fg = catppuccin_palette.lavender,
	first_match_str_bg = catppuccin_palette.base,
	lable_fg = catppuccin_palette.green,
	lable_bg = catppuccin_palette.base,
	only_current = false, -- only search the current window
	show_search_in_statusbar = false,
	auto_exit_when_unmatch = false,
	enable_capital_lable = false,
	search_patterns = {}, -- demo:{"%.e%d+","s%d+e%d+"}
})

require("yatline"):setup({
	section_separator = { open = "", close = "" },
	inverse_separator = { open = "", close = "" },
	part_separator = { open = "", close = "" },

	style_a = {
		fg = catppuccin_palette.mantle,
		bg_mode = {
			normal = catppuccin_palette.blue,
			select = catppuccin_palette.mauve,
			un_set = catppuccin_palette.red,
		},
	},
	style_b = { bg = catppuccin_palette.surface0, fg = catppuccin_palette.text },
	style_c = { bg = catppuccin_palette.base, fg = catppuccin_palette.text },

	permissions_t_fg = catppuccin_palette.green,
	permissions_r_fg = catppuccin_palette.yellow,
	permissions_w_fg = catppuccin_palette.red,
	permissions_x_fg = catppuccin_palette.sky,
	permissions_s_fg = catppuccin_palette.lavender,

	selected = { icon = "󰻭", fg = catppuccin_palette.yellow },
	copied = { icon = "", fg = catppuccin_palette.green },
	cut = { icon = "", fg = catppuccin_palette.red },

	total = { icon = "", fg = catppuccin_palette.yellow },
	succ = { icon = "", fg = catppuccin_palette.green },
	fail = { icon = "", fg = catppuccin_palette.red },
	found = { icon = "", fg = catppuccin_palette.blue },
	processed = { icon = "", fg = catppuccin_palette.green },

	tab_width = 20,
	tab_use_inverse = true,

	show_background = false,

	display_header_line = true,
	display_status_line = true,

	header_line = {
		left = {
			section_a = {
				{ type = "line", custom = false, name = "tabs", params = { "left" } },
			},
			section_b = {
				{ type = "coloreds", custom = false, name = "githead" },
			},
			section_c = {},
		},
		right = {
			section_a = {
				{ type = "string", custom = false, name = "tab_path" },
			},
			section_b = {
				{ type = "coloreds", custom = false, name = "task_workload" },
			},
			section_c = {
				{ type = "coloreds", custom = false, name = "task_states" },
			},
		},
	},

	status_line = {
		left = {
			section_a = {
				{ type = "string", custom = false, name = "tab_mode" },
			},
			section_b = {
				{ type = "string", custom = false, name = "hovered_size" },
			},
			section_c = {
				{ type = "string", custom = false, name = "hovered_name" },
				{ type = "coloreds", custom = false, name = "count" },
			},
		},
		right = {
			section_a = {
				{ type = "string", custom = false, name = "cursor_position" },
			},
			section_b = {
				{ type = "string", custom = false, name = "cursor_percentage" },
			},
			section_c = {
				{ type = "string", custom = false, name = "hovered_file_extension", params = { true } },
				{ type = "coloreds", custom = false, name = "permissions" },
			},
		},
	},
})

require("yatline-githead"):setup({
	show_branch = true,
	branch_prefix = "",
	branch_symbol = "",
	branch_borders = "",

	commit_symbol = " ",

	show_stashes = true,
	stashes_symbol = " ",

	show_state = true,
	show_state_prefix = true,
	state_symbol = "󱅉",

	show_staged = true,
	staged_symbol = " ",

	show_unstaged = true,
	unstaged_symbol = " ",

	show_untracked = true,
	untracked_symbol = " ",

	prefix_color = catppuccin_palette.pink,
	branch_color = catppuccin_palette.pink,
	commit_color = catppuccin_palette.mauve,
	stashes_color = catppuccin_palette.teal,
	state_color = catppuccin_palette.lavender,
	staged_color = catppuccin_palette.green,
	unstaged_color = catppuccin_palette.yellow,
	untracked_color = catppuccin_palette.pink,
})