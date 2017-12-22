command: "ESC=`printf \"\e\"`; ps -A -o %mem | awk '{s+=$1} END {print \"\" s}'"

refreshFrequency: 5000 # ms

render: (output) ->
  "<span class='foreground'><i class='fa fa-server highlight' aria-hidden='true'></i> #{output}</span>"

style: """
  -webkit-font-smoothing: antialiased
  color: #eee8d5
  font: 14px Menlo
  right: 165px
  top: 3px
"""
