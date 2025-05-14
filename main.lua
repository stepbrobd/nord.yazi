return {
	setup = function()
		return {
			section_separator = { open = "", close = "" },
			part_separator = { open = "", close = "" },
			inverse_separator = { open = "", close = "" },

			style_a = {
				fg = "black",
				bg_mode = {
					normal = "#81A1C1",
					select = "#88C0D0",
					un_set = "#D08770",
				},
			},
			style_b = { bg = "#4C566A", fg = "#E5E9F0" },
			style_c = { bg = "#3B4252", fg = "#81A1C1" },

			permissions_t_fg = "#A3BE8C",
			permissions_r_fg = "#EBCB8B",
			permissions_w_fg = "#BF616A",
			permissions_x_fg = "#88C0D0",
			permissions_s_fg = "#E5E9F0",

			selected = { icon = "󰻭", fg = "#EBCB8B" },
			copied = { icon = "", fg = "#A3BE8C" },
			cut = { icon = "", fg = "#BF616A" },
			files = { icon = "", fg = "#5E81AC" },
			filtereds = { icon = "", fg = "#B48EAD" },

			total = { icon = "󰮍", fg = "#EBCB8B" },
			succ = { icon = "", fg = "#A3BE8C" },
			fail = { icon = "", fg = "#BF616A" },
			found = { icon = "󰮕", fg = "#5E81AC" },
			processed = { icon = "󰐍", fg = "#A3BE8C" },
		}
	end,
}
