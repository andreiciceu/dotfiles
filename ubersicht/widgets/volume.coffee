command: "osascript -e 'get volume settings' | cut -f2 -d':' | cut -f1 -d',';"

refreshFrequency: 3000 # ms

render: (output) ->
  "<span class='foreground'><i class='fa fa-volume-up highlight' aria-hidden='true'></i> #{output}</span>"

style: """
  -webkit-font-smoothing: antialiased
  font: 14px Menlo
  top: 3px
  right: 350px
  color: #eee8d5
"""
