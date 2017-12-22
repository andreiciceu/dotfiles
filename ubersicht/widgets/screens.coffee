command: "/usr/local/bin/kwmc query space active name"

refreshFrequency: 500

render: (output) ->
  output = output.trim();
  icons = {
    main: 'television',
    web: 'firefox',
    dev: 'code',
    console: 'terminal',
    test: 'cubes',
    games: 'folder'
  }
  str = ''

  createIcon = (icon, screen) ->
    cls = 'foreground'
    cls2 = ''
    if screen is output
      cls = 'highlight'
      cls2 = 'highlight-bg'
    str += "<div class='screen-icon #{cls2}'>
    <i class='fa fa-#{icon}' aria-hidden='true'></i></div>\n"

  v = createIcon icon, screen for own screen, icon of icons
  "<div>
      #{str}
      <span class='highlight'>(^_^)</span>
      <span class='foreground'>#{output}</span>
    </div>
  "


style: """
  -webkit-font-smoothing: antialiased
  color: #eee8d5
  font: 15px Menlo
  i
    padding-top: 2px
    padding-left: 3px
"""
