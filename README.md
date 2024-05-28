
# Toolbox

Scripts and files used for setting up my dev environment

# Usage

```
# Remotely
curl -s https://raw.githubusercontent.com/torvoau/toolbox/main/install.sh | bash -s

# Locally
bash ./install.sh

# Using a Zip
# curl https://github.com/torvoau/toolbox/archive/refs/heads/main.zip -o toolbox.zip && unzip toolbox.zip && rm toolbox.zip && ./toolbox/toolbox

# Using Git
```

# Colors

GitHub Dark

{
  "black": "#1b1f23",
  "white": "#fff",
  "gray": ["#fafbfc", "#f6f8fa", "#e1e4e8", "#d1d5da", "#959da5", "#6a737d", "#586069", "#444d56", "#2f363d", "#24292e"],
  "blue": ["#f1f8ff", "#dbedff", "#c8e1ff", "#79b8ff", "#2188ff", "#0366d6", "#005cc5", "#044289", "#032f62", "#05264c"],
  "green": ["#f0fff4", "#dcffe4", "#bef5cb", "#85e89d", "#34d058", "#28a745", "#22863a", "#176f2c", "#165c26", "#144620"],
  "yellow": ["#fffdef", "#fffbdd", "#fff5b1", "#ffea7f", "#ffdf5d", "#ffd33d", "#f9c513", "#dbab09", "#b08800", "#735c0f"],
  "orange": ["#fff8f2", "#ffebda", "#ffd1ac", "#ffab70", "#fb8532", "#f66a0a", "#e36209", "#d15704", "#c24e00", "#a04100"],
  "red": ["#ffeef0", "#ffdce0", "#fdaeb7", "#f97583", "#ea4a5a", "#d73a49", "#cb2431", "#b31d28", "#9e1c23", "#86181d"],
  "purple": ["#f5f0ff", "#e6dcfd", "#d1bcf9", "#b392f0", "#8a63d2", "#6f42c1", "#5a32a3", "#4c2889", "#3a1d6e", "#29134e"],
  "pink": ["#ffeef8", "#fedbf0", "#f9b3dd", "#f692ce", "#ec6cb9", "#ea4aaa", "#d03592", "#b93a86", "#99306f", "#6d224f"]
}

const workbenchForeground = dark: primer.gray[7] 
const editorForeground =d ark: primer.gray[7] 
focusBorder:dark: primer.blue[3]
foreground:dark: primer.gray[6]
descriptionForeground: primer.gray[5]
errorForeground: primer.red[6]
"textLink.foreground":dark: primer.blue[6]
"textLink.activeForeground":dark: primer.blue[7]
"textBlockQuote.background": primer.gray[0],
"textBlockQuote.border": primer.gray[2],
"textCodeBlock.background": primer.gray[1],
"textPreformat.foreground": primer.gray[6],
"textSeparator.foreground": primer.gray[3],
"button.background":dark: primer.green[2]
"button.foreground":dark: primer.green[8]
"button.hoverBackground":dark: primer.green[3]
"button.secondaryBackground":dark: primer.gray[2]
"button.secondaryForeground": primer.black,
"button.secondaryHoverBackground":dark: primer.gray[3]

"checkbox.background":dark: primer.gray[2]
"checkbox.border":dark: primer.white

"dropdown.background":dark: primer.gray[1]
"dropdown.border":dark: primer.white
"dropdown.foreground": workbenchForeground,
"dropdown.listBackground":dark: primer.gray[0]

"input.background":dark: primer.gray[1]
"input.border":dark: primer.white
"input.foreground": workbenchForeground,
"input.placeholderForeground":dark: primer.gray[5]

"badge.foreground":dark: primer.blue[7]
"badge.background":dark: primer.blue[2]

"progressBar.background": primer.blue[4],

"titleBar.activeForeground": workbenchForeground,
"titleBar.activeBackground":dark: primer.gray[0]
"titleBar.inactiveForeground": primer.gray[5],
"titleBar.inactiveBackground":dark: "#1f2428"
"titleBar.border":dark: primer.white

"activityBar.foreground": workbenchForeground,
"activityBar.inactiveForeground": primer.gray[4],
"activityBar.background":dark: primer.gray[0]
"activityBarBadge.foreground":dark: primer.black
"activityBarBadge.background":dark: primer.blue[4]
"activityBar.activeBorder": "#f9826c",
"activityBar.border":dark: primer.white

"sideBar.foreground": primer.gray[6],
"sideBar.background":dark: "#1f2428"
"sideBar.border":dark: primer.white
"sideBarTitle.foreground": workbenchForeground,
"sideBarSectionHeader.foreground": workbenchForeground,
"sideBarSectionHeader.background":dark: "#1f2428"
"sideBarSectionHeader.border":dark: primer.white

"list.hoverForeground": workbenchForeground,
"list.inactiveSelectionForeground": workbenchForeground,
"list.activeSelectionForeground": workbenchForeground,
"list.hoverBackground":dark: "#282e34"
"list.inactiveSelectionBackground":dark: "#282e34"
"list.activeSelectionBackground":dark: "#39414a"
"list.inactiveFocusBackground":dark: "#1d2d3e"
"list.focusBackground":dark: primer.blue[2]

"tree.indentGuidesStroke":dark: primer.gray[1]

"notificationCenterHeader.foreground": primer.gray[5],
"notificationCenterHeader.background":dark: primer.gray[0]
"notifications.foreground": workbenchForeground,
"notifications.background":dark: primer.gray[1]
"notifications.border":dark: primer.white
"notificationsErrorIcon.foreground": primer.red[5],
"notificationsWarningIcon.foreground": primer.orange[6],
"notificationsInfoIcon.foreground": primer.blue[6],

"pickerGroup.border": primer.gray[2],
"pickerGroup.foreground": workbenchForeground,
"quickInput.background": primer.gray[0],
"quickInput.foreground": workbenchForeground,

"statusBar.foreground": primer.gray[6],
"statusBar.background":dark: primer.gray[0]
"statusBar.border":dark: primer.white
"statusBar.noFolderBackground":dark: primer.gray[0]
"statusBar.debuggingBackground": auto("#f9826c"),
"statusBar.debuggingForeground":dark: primer.black
"statusBarItem.prominentBackground":dark: "#282e34"
"statusBarItem.remoteForeground": primer.gray[6],
"statusBarItem.remoteBackground":dark: primer.gray[0]

"editorGroupHeader.tabsBackground":dark: "#1f2428"
"editorGroupHeader.tabsBorder":dark: primer.white
"editorGroup.border":dark: primer.white

"tab.activeForeground": workbenchForeground,
"tab.inactiveForeground": primer.gray[5],
"tab.inactiveBackground":dark: "#1f2428"
"tab.activeBackground":dark: primer.gray[0]
"tab.hoverBackground":dark: primer.gray[0]
"tab.unfocusedHoverBackground":dark: primer.gray[0]
"tab.border":dark: primer.white
"tab.unfocusedActiveBorderTop":dark: primer.white
"tab.activeBorder":dark: primer.gray[0]
"tab.unfocusedActiveBorder":dark: primer.gray[0]
"tab.activeBorderTop": "#f9826c",

"breadcrumb.foreground": primer.gray[5],
"breadcrumb.focusForeground": workbenchForeground,
"breadcrumb.activeSelectionForeground": primer.gray[6],
"breadcrumbPicker.background":dark: "#2b3036"

"editor.foreground": editorForeground,
"editor.background":dark: primer.gray[0]
"editorWidget.background":dark: "#1f2428"
"editor.foldBackground":dark: "#58606915" // needs opacity
"editor.lineHighdark: "#2b3036"
"editorLineNumber.foreground":dark: primer.gray[2]
"editorLineNumber.activeForeground": editorForeground,
"editorIndentGuide.background":dark: primer.gray[1]
"editorIndentGuide.activeBackground":dark: primer.gray[2]
"editorWhitespace.foreground":dark: primer.gray[2]
"editorCursor.foreground": primer.blue[7],
"editorError.foreground": primer.red[6],
"editorWarning.foreground": primer.yellow[6],

"editor.findMatchBackground":dark: "#ffd33d44"
"editor.findMatchHighdark: "#ffd33d22"
"editor.linkedEditingBackground":dark: "#3392FF22"
"editor.inactiveSelectionBackground":dark: "#3392FF22"
"editor.selectionBackground":dark: "#3392FF44"
"editor.selectionHighdark: "#17E5E633"
"editor.selectionHighdark: "#17E5E600"
"editor.wordHighdark: "#17E5E600"
"editor.wordHighdark: "#17E5E600"
"editor.wordHighdark: "#17E5E699"
"editor.wordHighdark: "#17E5E666"
"editorBracketMatch.background":dark: "#17E5E650"
"editorBracketMatch.border":dark: "#17E5E600"

"editorGutter.modifiedBackground":dark: primer.blue[5]
"editorGutter.addedBackground":dark: primer.green[4]
"editorGutter.deletedBackground": primer.red[5],

"diffEditor.insertedTextBackground":dark: "#28a74530"
"diffEditor.removedTextBackground":dark: "#d73a4930"

"scrollbar.shadow":dark: "#0008"
"scrollbarSlider.background":dark: "#6a737d33"
"scrollbarSlider.hoverBackground":dark: "#6a737d44"
"scrollbarSlider.activeBackground":dark: "#6a737d88"
"editorOverviewRuler.border": primer.white,

"panel.background":dark: "#1f2428"
"panel.border":dark: primer.white
"panelTitle.activeBorder": "#f9826c",
"panelTitle.activeForeground": workbenchForeground,
"panelTitle.inactiveForeground": primer.gray[5],
"panelInput.border":dark: primer.gray[1]

"terminal.foreground": primer.gray[6],
"terminal.tab.activeBorder": "#f9826c",
"terminalCursor.background": primer.gray[3],
"terminalCursor.foreground": primer.blue[6],

// Test ANSI colors with:
// echo -e "\033[0mNC (No color)"
// echo -e "\033[1;37mWHITE\t\033[0;30mBLACK"
// echo -e "\033[0;34mBLUE\t\033[1;34mLIGHT_BLUE"
// echo -e "\033[0;32mGREEN\t\033[1;32mLIGHT_GREEN"
// echo -e "\033[0;36mCYAN\t\033[1;36mLIGHT_CYAN"
// echo -e "\033[0;31mRED\t\033[1;31mLIGHT_RED"
// echo -e "\033[0;35mPURPLE\t\033[1;35mLIGHT_PURPLE"
// echo -e "\033[0;33mYELLOW\t\033[1;33mLIGHT_YELLOW"
// echo -e "\033[1;30mGRAY\t\033[0;37mLIGHT_GRAY"

"terminal.ansiBrightWhite":dark: primer.gray[9] // WHITE
"terminal.ansiWhite":dark: primer.gray[6]  // LIGHT_GRAY
"terminal.ansiBrightBlack":dark: primer.gray[5] // GRAY
"terminal.ansiBlack":dark: primer.gray[3] // BLACK
"terminal.ansiBlue": primer.blue[5],
"terminal.ansiBrightBlue": primer.blue[6],
"terminal.ansiGreen": primer.green[5],
"terminal.ansiBrightGreen": primer.green[6],
"terminal.ansiCyan":dark: "#39c5cf"
"terminal.ansiBrightCyan":dark: "#56d4dd"
"terminal.ansiRed": primer.red[5],
"terminal.ansiBrightRed": primer.red[6],
"terminal.ansiMagenta": primer.purple[6],
"terminal.ansiBrightMagenta": primer.purple[6],
"terminal.ansiYellow":dark: primer.yellow[6]
"terminal.ansiBrightYellow":dark: primer.yellow[6]

"editorBracketHighlight.foreground1": primer.blue[6],
"editorBracketHighlight.foreground2": primer.orange[6],
"editorBracketHighlight.foreground3": primer.purple[6],
"editorBracketHighlight.foreground4": primer.blue[6],
"editorBracketHighlight.foreground5": primer.orange[6],
"editorBracketHighlight.foreground6": primer.purple[6],

"gitDecoration.addedResourceForeground": primer.green[5],
"gitDecoration.modifiedResourceForeground": primer.blue[6],
"gitDecoration.deletedResourceForeground": primer.red[5],
"gitDecoration.untrackedResourceForeground": primer.green[5],
"gitDecoration.ignoredResourceForeground": primer.gray[4],
"gitDecoration.conflictingResourceForeground": primer.orange[6],
"gitDecoration.submoduleResourceForeground": primer.gray[4],

"debugToolBar.background":dark: "#2b3036"
"editor.stackFrameHighdark: "#C6902625" // needs opacity (yellow)
"editor.focusedStackFrameHighdark: "#2b6a3033" // needs opacity (green)

"peekViewEditor.matchHighlightBackground":dark: "#ffd33d33"
"peekViewResult.matchHighlightBackground":dark: "#ffd33d33"
"peekViewEditor.background":dark: "#1f242888"
"peekViewResult.background":dark: "#1f2428"

"settings.headerForeground": workbenchForeground,
"settings.modifiedItemIndicator": primer.blue[4],
"welcomePage.buttonBackground": primer.gray[1],
"welcomePage.buttonHoverBackground": primer.gray[2],
