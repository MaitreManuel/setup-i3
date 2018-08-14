[1mdiff --git a/.config/polybar/config b/.config/polybar/config[m
[1mindex 7111757..55df368 100644[m
[1m--- a/.config/polybar/config[m
[1m+++ b/.config/polybar/config[m
[36m@@ -18,6 +18,8 @@[m [mspotify = #1db954[m
 primary = #ffb52a[m
 secondary = #e60053[m
 alert = #bd2c40[m
[32m+[m[32msuccess = #55aa55[m
[32m+[m[32mpurple = #6600cc[m
 info = #0a6cf5[m
 blue = #2ecfff[m
 amber = #ffb642[m
[36m@@ -36,9 +38,7 @@[m [mbackground = ${colors.background}[m
 foreground = ${colors.foreground}[m
 [m
 overline-size = 2[m
[31m-overline-color = #f00[m
 underline-size = 4[m
[31m-underline-color = #00f[m
 [m
 # no borders[m
 border-top-size = 20[m
[36m@@ -49,7 +49,7 @@[m [mborder-color = transparent[m
 module-margin-left = 1[m
 module-margin-right = 1[m
 [m
[31m-font-0 = Operator SSm Book:pixelsize=14;3[m
[32m+[m[32mfont-0 = Liberaton Sans:pixelsize=14;3[m
 font-1 = Font Awesome 5 Pro:fontformat=truetype:size=14;3[m
 font-2 = Font Awesome 5 Brands:fontformat=truetype:size=14;3[m
 [m
[36m@@ -63,7 +63,7 @@[m [mcard = intel_backlight[m
 [m
 format = <label>[m
 format-underline = ${colors.white}[m
[31m-label = %percentage%% [m
[32m+[m[32mlabel = %percentage%%  [m
 label-padding = 2[m
 [m
 [module/battery][m
[36m@@ -73,7 +73,7 @@[m [madapter = ADP1[m
 full-at = 98[m
 [m
 format-charging = <label-charging>  [m
[31m-format-charging-underline = #0a6cf5[m
[32m+[m[32mformat-charging-underline = ${colors.info}[m
 format-charging-padding = 2[m
 [m
 format-discharging = <label-discharging>  <ramp-capacity>[m
[36m@@ -82,7 +82,7 @@[m [mformat-discharging-padding = 2[m
 [m
 format-full = <label-full>  <ramp-capacity>[m
 format-full-prefix-foreground = ${colors.foreground-alt}[m
[31m-format-full-underline = ${colors.green}[m
[32m+[m[32mformat-full-underline = ${colors.success}[m
 format-full-padding = 2[m
 [m
 ramp-capacity-0 = [m
[36m@@ -121,7 +121,7 @@[m [mtype = internal/cpu[m
 interval = 0.5[m
 format = <label>[m
 format-underline = ${colors.intel}[m
[31m-label = %percentage%% [m
[32m+[m[32mlabel = %percentage%%  [m
 label-padding = 2[m
 [m
 [module/date][m
[36m@@ -201,8 +201,8 @@[m [mtype = internal/volume[m
 [m
 format-volume = <label-volume>  <ramp-volume>[m
 label-volume-foreground = ${root.foreground}[m
[31m-format-volume-underline = #0a6cf5[m
[31m-format-muted-underline = #6600cc[m
[32m+[m[32mformat-volume-underline = ${colors.info}[m
[32m+[m[32mformat-muted-underline = ${colors.purple}[m
 format-volume-padding = 2[m
 format-muted-padding = 2[m
 [m
