#!/usr/bin/perl

use Env;

$width = $ARGV[0];

$show_uptime = 1;
$show_ip = 1;

$sep_right_default = "";
$sep_right_alt = "";

$seg_1_sep = "";
$seg_2_sep = "#[fg=$TMUX_THEME_COLOR_THIRD,bg=$TMUX_THEME_COLOR_FIFTH]";
$seg_3_sep = "#[fg=$TMUX_THEME_COLOR_FIRST,bg=$TMUX_THEME_COLOR_THIRD]";

$seg_1_color = "#[fg=$TMUX_THEME_COLOR_SIXTH,bg=$TMUX_THEME_COLOR_FIFTH]";
$seg_2_color = "#[fg=$TMUX_THEME_COLOR_FOURTH,bg=$TMUX_THEME_COLOR_THIRD]";
$seg_3_color = "#[fg=$TMUX_THEME_COLOR_SECOND,bg=$TMUX_THEME_COLOR_FIRST]";

$seg_1_content = "";
$seg_2_content = "";
$seg_3_content = "";

if ($width > 155 and $show_uptime) {
  $uptime = `uptime | awk -F, '{sub(".*up ",x,\$1);print \$1,\$2}' | sed 's/ days  /:/'`;

  $uptime =~ s/^\s+|\s+$//g;
  $seg_1_content = "$uptime";
} else {
  $seg_1_content = "";
}

if ($width > 150 and $show_ip) {
  $ip_en0 = `ifconfig en0 | grep 'inet ' | awk '{print \$2}'`;
  $ip_en1 = `ifconfig en1 | grep 'inet ' | awk '{print \$2}'`;

  $ip_local = $ip_en0 . $ip_en1;
  $ip_local =~ s/^\s+|\s+$//g;

  $ip_global = `curl http://ipinfo.io/ip`;
  $ip_global =~ s/^\s+|\s+$//g;
  if (length ($ip_global) > 0) {
    $ip_global = "$sep_right_alt $ip_global";
  }

  $ip_vpn = `ifconfig tun0 | grep 'inet ' | awk '{print \" \" \$2}'`;
  $ip_vpn =~ s/^\s+|\s+$//g;

  if (length ($ip_local) > 0) {
    $seg_2_content .= " $ip_local";
  }
  else {
    $seg_2_content .= " offline";
  }
  if (length ($ip_global) > 0) {
    $seg_2_content .= " $ip_global";
  } else {
    $seg_2_content .= " $sep_right_alt offline";
  }

  if (length ($ip_vpn) > 0) {
    $seg_2_content .= " $ip_vpn";
  }
} else {
  $seg_2_content = "";
}

$host = `hostname -f | awk -F'.' '{print \$1}'`;
$host =~ s/^\s+|\s+$//g;

$seg_3_content = "$host";

$seg_1 = "$seg_1_color $seg_1_content";
$seg_2 = "$seg_2_sep" .  "$sep_right_default" . "$seg_2_color" .  " $seg_2_content";
$seg_3 = "$seg_3_sep" . $sep_right_default . "$seg_3_color $seg_3_content";

$status_right = "$seg_1 $seg_2 $seg_3 ";

print $status_right;
