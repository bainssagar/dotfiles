local mainMod = "SUPER"

-- Program Variables
local terminal = "ghostty"
local fileManager = "nautilus"
local menu = "noctalia msg panel-toggle launcher"
local editor = "ghostty -e nvim"
local browser = "brave-origin"

-- Window Behaviour
hl.bind(mainMod .. " + Q", hl.dsp.window.close())
hl.bind(mainMod .. " + T", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + SHIFT + F", hl.dsp.window.fullscreen({ action = "toggle" }))

-- Launch Apps
hl.bind(mainMod .. " + RETURN", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + SPACE", hl.dsp.exec_cmd(menu))
hl.bind(mainMod .. " + SHIFT + SPACE", hl.dsp.exec_cmd("hyprlauncher"))
hl.bind(mainMod .. " + F", hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + B", hl.dsp.exec_cmd(browser))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(editor))
hl.bind(mainMod .. " + Y", hl.dsp.exec_cmd("ghostty -e yazi"))
hl.bind(mainMod .. " + G", hl.dsp.exec_cmd("steam"))
hl.bind(mainMod .. " + L", hl.dsp.exec_cmd("localsend"))

-- Noctalia
hl.bind(mainMod .. " + C", hl.dsp.exec_cmd("noctalia msg panel-toggle control-center"))
hl.bind(mainMod .. " + W", hl.dsp.exec_cmd("noctalia msg panel-toggle wallpaper"))
hl.bind(mainMod .. " + SHIFT + C", hl.dsp.exec_cmd("noctalia msg panel-toggle control-center calendar"))
hl.bind(mainMod .. " + M", hl.dsp.exec_cmd("noctalia msg panel-toggle control-center media"))
hl.bind(mainMod .. " + N", hl.dsp.exec_cmd("noctalia msg panel-toggle control-center notifications"))
hl.bind(mainMod .. " + V", hl.dsp.exec_cmd("noctalia msg panel-toggle clipboard"))
hl.bind(mainMod .. " + ESCAPE", hl.dsp.exec_cmd("noctalia msg panel-toggle session"))
hl.bind(mainMod .. " + BACKSPACE", hl.dsp.exec_cmd("noctalia msg settings-open"))
hl.bind(mainMod .. " + S", hl.dsp.exec_cmd("noctalia msg screenshot-fullscreen"))
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.exec_cmd("noctalia msg screenshot-region"))
hl.bind(mainMod .. " + SHIFT + R", hl.dsp.exec_cmd("noctalia msg plugin noctalia/screen_recorder:service all toggle"))

-- Move focus with mainMod + arrow keys
hl.bind(mainMod .. " + left", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down", hl.dsp.focus({ direction = "down" }))

-- Move windows with mainMod + SHIFT + arrow keys
hl.bind(mainMod .. "+ SHIFT + left", hl.dsp.window.move({ direction = "left" }))
hl.bind(mainMod .. "+ SHIFT + right", hl.dsp.window.move({ direction = "right" }))
hl.bind(mainMod .. "+ SHIFT + up", hl.dsp.window.move({ direction = "up" }))
hl.bind(mainMod .. "+ SHIFT + down", hl.dsp.window.move({ direction = "down" }))

-- Change column width by 5%
hl.bind(mainMod .. " + bracketright", hl.dsp.layout("colresize +0.05"))
hl.bind(mainMod .. " + bracketleft", hl.dsp.layout("colresize -0.05"))

-- Swap columns
hl.bind(mainMod .. " + SHIFT + bracketright", hl.dsp.layout("swapcol r"))
hl.bind(mainMod .. " + SHIFT + bracketleft", hl.dsp.layout("swapcol l"))

-- Move current window to next/previous workspace
hl.bind(mainMod .. " + SHIFT + TAB", hl.dsp.window.move({ workspace = "+1" }))
hl.bind(mainMod .. " + ALT + TAB", hl.dsp.window.move({ workspace = "-1" }))

-- Move current workspace to or focus next monitor
hl.bind(mainMod .. " + SHIFT + M", hl.dsp.workspace.move({ monitor = "+1" }))
hl.bind(mainMod .. " + ALT + M", hl.dsp.focus({ monitor = "+1" }))

-- Switch workspaces with mainMod + [0–9] and Move active window to a workspace with mainMod + SHIFT + [0–9]
for i = 1, 10 do
	local key = i % 10 -- 10 maps to key 0
	hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ workspace = i }))
	hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

-- Scroll through existing workspaces with mainMod + scroll / mainMod + TAB
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))
hl.bind(mainMod .. " + TAB", hl.dsp.focus({ workspace = "e+1" }))

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Laptop multimedia keys for volume and LCD brightness
hl.bind(
	"XF86AudioRaiseVolume",
	hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioLowerVolume",
	hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioMute",
	hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioMicMute",
	hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),
	{ locked = true, repeating = true }
)
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"), { locked = true, repeating = true })

-- Requires playerctl
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })
