let cp = require('child_process');
let fs = require('fs');
let Color = require('color');
let convert = require('color-convert');

let path = '/Users/soferonline/ubersicht/widgets/style.css';
let colorsPath = '/Users/soferonline/.cache/wal/colors.json';
let coffeeStylesPath = '/Users/soferonline/ubersicht/widgets/imports.coffee';

fs.readFile(colorsPath, (err, data) => {
  if (err) throw err;
  let colors = JSON.parse(data.toString());
  let foreground = colors.special.foreground;
  let background = colors.special.background;
  let highlight = colors.colors.color1;
  let borderRgb = Color(background).darken(0.1).rgb().array();
  let borderHex = convert.rgb.hex(Object.values(borderRgb));
  fs.readFile(path, (err, data) => {
    if (err) throw err;
    let text = replace_foreground(data.toString(), foreground);
    text = replace_highlight(text, highlight);
    text = replace_background(text, background);
    text = replace_border(text, `#${borderHex}`)
    fs.writeFile(path, text, (err) => {
      if (err) throw err;
      refresh();
    });
  });
});

function replace_foreground(text, color) {
  let re = /.foreground {\n  color: [^;]*/g;
  return text.replace(re, `.foreground {\n  color: ${color}`);
}

function replace_highlight(text, color) {
  let re = /.highlight {\n  color: [^;]*/g;
  return text.replace(re, `.highlight {\n  color: ${color}`);
}

function replace_background(text, color) {
  let re = /.background {\n  background-color: [^;]*/g;
  return text.replace(re, `.background {\n  background-color: ${color}`);
}

function replace_border(text, color) {
  let re = /border: 1px solid [^;]*/g;
  return text.replace(re, `border: 1px solid ${color}`);
}

function refresh() {
  // cp.exec('osascript uebersicht.scpt');
  fs.readFile(coffeeStylesPath, (err, data) => {
    fs.writeFile(coffeeStylesPath, data.toString());
  });
}
