const fs = require('fs');
const util = require('util');
const Color = require('Color');

const readFile = util.promisify(fs.readFile);
const writeFile = util.promisify(fs.writeFile);

const PROFILES_PATH = '/Users/soferonline/Library/Application\ Support/iTerm2/DynamicProfiles/profiles.json';
const COLORS_PATH = '/Users/soferonline/.cache/wal/colors.json';
const ACTIVE_PROFILE = 'active';

// iterm profile to json color data mapping
const colorMap = {
  'Foreground Color': 'color15',
  'Background Color': 'color0',
  'Ansi 0 Color': 'color0',
  'Ansi 1 Color': 'color1',
  'Ansi 2 Color': 'color2',
  'Ansi 3 Color': 'color3',
  'Ansi 4 Color': 'color4',
  'Ansi 5 Color': 'color5',
  'Ansi 6 Color': 'color6',
  'Ansi 7 Color': 'color7',
  'Ansi 8 Color': 'color8',
  'Ansi 9 Color': 'color9',
  'Ansi 10 Color': 'color10',
  'Ansi 11 Color': 'color11',
  'Ansi 12 Color': 'color12',
  'Ansi 13 Color': 'color13',
  'Ansi 14 Color': 'color14',
  'Ansi 15 Color': 'color15'
}

// determine whether a profile is the active profile
let isActiveProfile = (profile) => profile.Name === ACTIVE_PROFILE;
// update a profile's color with the specified value
let setColor = (profile, key, color) => {
  let colorInfo = Color(color).object();
  let ratio = key.indexOf('Background') >= 0 ? 0.76 : 1; // fix different background on new window
  profile[key]['Red Component'] = colorInfo.r / 255 * ratio;
  profile[key]['Green Component'] = colorInfo.g / 255 * ratio;
  profile[key]['Blue Component'] = colorInfo.b / 255 * ratio;
};

async function run() {
  let buffer = await readFile(PROFILES_PATH);
  let profileData = JSON.parse(buffer);
  buffer = await readFile(COLORS_PATH);
  let colorData = JSON.parse(buffer);
  // find active profile
  let activeProfile = profileData['Profiles'].find(isActiveProfile);
  let index = profileData['Profiles'].indexOf(activeProfile);
  // update profile info
  for (var color in colorMap) {
    setColor(activeProfile, color, colorData.colors[colorMap[color]]);
  }
  // save profile
  profileData['Profiles'][index] = activeProfile;
  // write to file
  await writeFile(PROFILES_PATH, JSON.stringify(profileData));
}

run()
  .then(() => console.log('Success'))
.catch(e => console.log(e))
