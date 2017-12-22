command: "ESC=`printf \"\e\"`; ps -A -o %cpu | awk '{s+=$1} END {printf(\"%.2f\",s/8);}'"

refreshFrequency: 3000 # ms

render: (output) ->
  "<span class='foreground'><i class='fa fa-cog highlight' aria-hidden='true'></i> #{output}</span>"

style: """
  -webkit-font-smoothing: antialiased
  color: #eee8d5
  font: 14px Menlo
  right: 255px
  top: 3px
"""
