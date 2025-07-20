draw_set_color(color)
draw_set_font(fnt_ui)
draw_set_halign(fa_right)
draw_set_valign(fa_top)

var t = ""
t += string(t_min)
t += ":"
if t_sec > 9 {t += "" + string(t_sec)}
if t_sec < 10 {t += "0" + string(t_sec)}
t += "."
t += string(t_mil)

draw_text (1260,10,t)