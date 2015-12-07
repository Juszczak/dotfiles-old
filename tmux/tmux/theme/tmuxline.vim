" tmuxline.vim
" Adrian Juszczak (https://github.com/juszczak/dotfiles)

fun! tmuxline#presets#adrian#get()
  let bar = tmuxline#new()

  call bar.left.add('a', '#S')
  call bar.left.add_left_sep()

  call bar.left.add('b', '#{?client_prefix,#[fg=colour190]•,#[fg=colour234]•}')
  call bar.left.add_left_sep()

  call bar.win.add('win', '#I #W #F')

  call bar.cwin.add_left_sep()
  call bar.cwin.add('cwin', '#I #W #F')
  call bar.cwin.add_left_sep()

  call bar.right.add('x', "#(uptime | awk '{print $3}'|sed 's/,//')")

  call bar.right.add_right_sep()
  call bar.right.add('y', "
    \ #(ifconfig en0 | grep 'inet ' | awk '{print $2}')
    \ #(ifconfig en1 | grep 'inet ' | awk '{print $2}')
    \  #(curl http://ipinfo.io/ip)
    \ #(ifconfig tun0 | grep 'inet ' | awk '{print \" \" $2}')
    \")

  call bar.right.add_right_sep()
  call bar.right.add('z', '#h')

  let bar.options
    \['status-justify'] = 'left'

  let bar.win_options
    \['window-status-activity-attr'] = 'none'

  let bar.options['status-attr'] = ''

  return bar
endfun

