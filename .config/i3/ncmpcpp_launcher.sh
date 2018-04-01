(i3-msg "workspace 10: ; append_layout ~/.config/i3/ncmpcpp_layout.json") &
(sleep 0.3; urxvt -name ncmpcpp-visualizer -e ncmpcpp -s visualizer -c .config/ncmpcpp/config) &
(sleep 0.6; urxvt -name ncmpcpp-playlist -e ncmpcpp -s playlist -c .config/ncmpcpp/config) &
(sleep 1; urxvt -name ncmpcpp-main -e ncmpcpp -s browser -c .config/ncmpcpp/config)
#urxvt -name ncmpcpp-main -e ncmpcpp
