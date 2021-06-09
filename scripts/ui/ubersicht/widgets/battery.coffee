# command: "pmset -g batt | egrep '([0-9]+\%).*' -o | cut -f1 -d';'"
command: "pmset -g batt | egrep '([0-9]+\%).*' -o"

refreshFrequency: 15000 # ms

render: (output) ->
  percent = parseInt(output.substr(0, output.length - 2))
  remaining = output.match(/\d\:\d+/) || '!ETA'
  level = 4
  if percent < 90
    level = 3
  if percent < 70
    level = 2
  if percent < 30
    level = 1
  if percent < 15
    level = 0
  "<span class='foreground'><i class='fa fa-battery-#{level} highlight' aria-hidden='true'></i> #{percent}% (#{remaining})</span>"

style: """
  -webkit-font-smoothing: antialiased
  font: 14px Menlo
  top: 3px
  right: 20px
  color: #eee8d5
"""
