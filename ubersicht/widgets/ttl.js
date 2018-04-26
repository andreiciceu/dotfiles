command: "echo Hello World!",
refreshFrequency: 1000,
render: function (output) {
  const maxAge = 90;
  const birthDate = new Date('1993-02-19');

  function numberWithCommas(x) {
    x = x.toString();
    var pattern = /(-?\d+)(\d{3})/;
    while (pattern.test(x))
        x = x.replace(pattern, "$1,$2");
    return x;
  }
  const cDate = new Date();
  const dDate = new Date(birthDate.toString());
  dDate.setYear(dDate.getFullYear() + maxAge);
  const maxSeconds = Math.round((dDate - birthDate) / 1000);
  const cSeconds = Math.round((cDate - birthDate) / 1000);
  const toLiveSeconds = Math.round((dDate - cDate) / 1000);
  const procLived = cSeconds / maxSeconds;

  return `
    <div class='progress-bar'>
      <div class='progress' style='width: ${procLived * 100}%'>
      </div>
      <div class='foreground texts'>
        <span class='proc'>
          ${Math.round(procLived * 100 * 1000) / 1000} %
        </span>
        <span class='sec-left'>
          ${numberWithCommas(toLiveSeconds) + 's'}
        </span>
      </div>
    </div>
  `;
},

style: `
  top: 2px
  left: 300px
  width: 300px

  div.texts
    position: absolute
    top: 0
    left: 5px
  .sec-left
    position: absolute
    left: 190px
    width: 150px
    top: 0
`
