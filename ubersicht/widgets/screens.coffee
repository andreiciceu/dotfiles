command: "/usr/local/bin/chunkc tiling::query --desktop id"

refreshFrequency: 500

render: (output) ->
  output = output.trim();
  screens = {
    1: {name: 'main', icon: 'television'},
    2: {name: 'web', icon: 'firefox'},
    3: {name: 'dev', icon: 'code'},
    4: {name: 'console', icon: 'terminal'},
    5: {name: 'test', icon: 'cubes'},
    6: {name: 'files', icon: 'folder'},
  }
  str = ''

  createIcon = (screen, screenId) ->
    cls = 'foreground'
    cls2 = ''
    if screenId is output
      cls = 'highlight'
      cls2 = 'highlight-bg'
    str += "<div class='screen-icon #{cls2}'>
    <i class='fa fa-#{screen.icon}' aria-hidden='true'></i></div>\n"

  v = createIcon screen, screenId for own screenId, screen of screens
  "<div>
      #{str}
      <div class='highlight smiley'>(^_^)</div>
      <span class='foreground'>#{screens[output].name}</span>
    </div>
  "


style: """
  -webkit-font-smoothing: antialiased
  color: #eee8d5
  font: 15px Menlo
  i
    padding-top: 2px
    padding-left: 3px
  .smiley
    display: inline-block
    padding: 2px
"""
