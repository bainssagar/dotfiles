hl.config({
	general = {
		gaps_in = 5,
		gaps_out = 10,

		border_size = 2,

		col = {
			active_border = "rgba(ffffffaa)",
			inactive_border = "rgba(595959aa)",
		},

		resize_on_border = false,

		allow_tearing = false,

		layout = "scrolling",
	},

	decoration = {
		rounding = 15,
		rounding_power = 5,

		active_opacity = 0.95,
		inactive_opacity = 0.9,

		shadow = {
			enabled = true,
			range = 5,
			render_power = 3,
		},

		blur = {
			enabled = true,
			size = 10,
			passes = 1,
			vibrancy = 0.15,
		},
	},

	animations = {
		enabled = true,
	},
})

-- Default springs
hl.curve("easy", { type = "spring", mass = 1, stiffness = 500, dampening = 35 })

hl.animation({ leaf = "global", enabled = true, speed = 1, spring = "easy" })
hl.animation({ leaf = "border", enabled = true, speed = 1, spring = "easy" })
hl.animation({ leaf = "windows", enabled = true, speed = 1, spring = "easy", style = "slide" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 1, spring = "easy", style = "slide" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 1, spring = "easy", style = "slide" })
hl.animation({ leaf = "fadeIn", enabled = true, speed = 1, spring = "easy" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 1, spring = "easy" })
hl.animation({ leaf = "fade", enabled = true, speed = 1, spring = "easy" })
hl.animation({ leaf = "layers", enabled = true, speed = 1, spring = "easy", style = "slide" })
hl.animation({ leaf = "layersIn", enabled = true, speed = 1, spring = "easy", style = "slide" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 1, spring = "easy", style = "slide" })
hl.animation({ leaf = "fadeLayersIn", enabled = true, speed = 1, spring = "easy" })
hl.animation({ leaf = "fadeLayersOut", enabled = true, speed = 1, spring = "easy" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 1, spring = "easy", style = "slidevert" })
hl.animation({ leaf = "workspacesIn", enabled = true, speed = 1, spring = "easy", style = "slidevert" })
hl.animation({ leaf = "workspacesOut", enabled = true, speed = 1, spring = "easy", style = "slidevert" })
hl.animation({ leaf = "zoomFactor", enabled = true, speed = 1, spring = "easy" })
