----------------------------------------------------------------------
-- a shunsk's base config file of xmobar
-- ok-xmonad.blogspot.com
----------------------------------------------------------------------

Config {
    font = "AestheticIosevka Nerd Font Mono mn:size=20:medium:antialias=true"
  , additionalFonts    = [ "HackGen Console NF 20" ]
  , bgColor            = "#1a1b26"
  , fgColor            = "#c0caf5"
  , border             = BottomB
  , borderWidth        = 1
  , borderColor        = "#222266"
  , alpha              = 255
  , position           = TopH 40
  , template = " %UnsafeXMonadLog%} %date% { %battery% "
  , commands =
    [ Run UnsafeXMonadLog
    , Run Cpu
      [ "--template"  , "CUP: <total>%"
      , "--minwidth" , "3"
      , "--Low"      , "30"
      , "--High"     , "80"
      , "--low"      , "#C2E7DA"
      , "--normal"   , "#1A1B41"
      , "--high"      , "#FF9F1C"
      ] 60
    , Run Memory
      [ "--template"  , "MEM: <usedratio>%"
      , "--minwidth"  , "3"
      , "--Low"        , "30"
      , "--High"       , "80"
      , "--low"  , "#C2E7DA"
      , "--normal"     , "#1A1B41"
      , "--high"   , "#FF9F1C"
      ] 60
    , Run Battery
      [ "--template"   , "<acstatus>"
      , "--Low"   , "10"
      , "--High"   , "99"
      , "--low"   , "#FF9F1C"
      , "--normal"   , "#1A1B41"
      , "--high"   , "#C2E7DA"
      , "--"
      , "-o"    , "🔋 <left>%"
      , "-O"    , "🔌 <left>%"
      , "-i"    , "🔌 <left>%"
      ] 60
    , Run DynNetwork
      [ "--template"   , "<dev>: <tx>KB <rx>KB"
      , "--minwidth"   , "4"
      , "--Low"        , "500000"
      , "--High"       , "2000000"
      , "--low"  , "#C2E7DA"
      , "--normal"     , "#1A1B41"
      , "--high"   , "#FF9F1C"
      ] 20
    , Run Wireless ""
      [ "--template"  , "<fc=#6290C3,#F1FFE7> <essid> </fc> <quality>"
      , "--Low"  , "50"
      , "--High"       , "70"
      , "--low"        , "#C2E7DA"
      , "--normal"     , "#1A1B41"
      , "--high"   , "#FF9F1C"
      ]  60
    , Run Date "%Y/%-m/%-d %a %H:%M" "date" 10
    ]
}
