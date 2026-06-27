hl.window_rule({
	name = "suppress-maximize-events",
	match = { class = ".*" },
	suppress_event = "maximize",
})

hl.window_rule({
	name = "fix-xwayland-drags",
	match = {
		class = "^$",
		title = "^$",
		xwayland = true,
		float = true,
		fullscreen = false,
		pin = false,
	},

	no_focus = true,
})

-- Hyprland-run windowrule
hl.window_rule({
	name = "move-hyprland-run",
	match = { class = "hyprland-run" },

	move = "20 monitor_h-120",
	float = true,
})

-- Make file picker windows floating
hl.window_rule({
	name = "floating-file-picker",
	match = { class = "xdg-desktop-portal-gtk" },
	float = true,
	center = true,
	border_size = 0,
	size = { 800, 600 },
})

hl.window_rule({
	name = "floating-file-picker",
	match = { class = "xdg-desktop-portal-hyprland" },
	float = true,
	center = true,
	border_size = 0,
	size = { 800, 600 },
})

-- Make screenshot windows floating
hl.window_rule({
	name = "satty-overlay",
	match = { class = "^(com.gabm.satty)$" },
	float = true,
	center = true,
	size = { 800, 600 },
})
