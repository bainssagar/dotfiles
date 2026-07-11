hl.config({
	misc = {
		force_default_wallpaper = -1, -- Set to 0 or 1 to disable the anime mascot wallpapers
		disable_hyprland_logo = false, -- If true disables the random hyprland logo / anime girl background. :(
		focus_on_activate = true,
	},

	xwayland = {
		force_zero_scaling = true,
	},

	ecosystem = {
		enforce_permissions = true,
	},
})

hl.permission({
	binary = "/usr/bin/grim",
	type = "screencopy",
	mode = "allow",
})

hl.permission({
	binary = "/usr/bin/noctalia",
	type = "screencopy",
	mode = "allow",
})

hl.permission({
	binary = "/usr/(lib|libexec|lib64)/xdg-desktop-portal-hyprland",
	type = "screencopy",
	mode = "allow",
})
