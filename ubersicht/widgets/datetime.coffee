command: "date +\"%a %d-%m-%Y %H:%M:%S\""

refreshFrequency: 1000

render: (output) ->
  "<div class='date foreground'>#{output}</div>"

style: """
  -webkit-font-smoothing: antialiased
  font: 16px Menlo
  top: 1px
  position: absolute
  width: 100%

  .date
    text-align: center
"""
