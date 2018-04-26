command: "ESC=`printf \"\e\"`; ps -A -o '%cpu %mem' | awk '{s+=$1; s2+=$2} END {printf(\"%.2f %.2f\", s/8, s2);}'"

refreshFrequency: 3000 # ms

render: (output) ->
  values = output.split(' ')
  "<div class='foreground'>
    <span class='indicator'>
      <i class='fa fa-cog highlight' aria-hidden='true'></i>
      #{values[0]}
    </span>
    <span class='indicator'>
      <i class='fa fa-server highlight' aria-hidden='true'></i>
      #{values[1]}
    </span>
  </div>"

style: """
  -webkit-font-smoothing: antialiased
  color: #eee8d5
  font: 14px Menlo
  right: 140px
  top: 3px
  span.indicator
    width: 90px
    display: inline-block
"""
