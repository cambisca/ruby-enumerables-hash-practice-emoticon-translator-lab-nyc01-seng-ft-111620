# {
#   "angel" => [ "O:)", "☜(⌒▽⌒)☞" ],
#   "angry" => [ ">:(", "ヽ(ｏ`皿′ｏ)ﾉ" ],
#   "bored" => [ ":O", "(ΘεΘ;)" ],
#   "confused" => [ "%)", "(゜.゜)" ],
#   "embarrassed" => [ ":$", "(#^.^#)" ],
#   "fish" => [ "><>", ">゜))))彡" ],
#   "glasses" => [ "8D", "(^0_0^)" ],
#   "grinning" => [ "=D", "(￣ー￣)" ],
#   "happy" => [ ":)", "(＾ｖ＾)" ],
#   "kiss" => [ ":*", "(*^3^)/~☆" ],
#   "sad" => [ ":'(", "(Ｔ▽Ｔ)" ],
#   "surprised" => [ ":o", "o_O" ],
#   "wink" => [ ";)", "(^_-)" ]
# }
require 'yaml' 

def load_library(path)
 
  emoticons = {"get_meaning" => {}, "get_emoticon" => {}}
 
  YAML.load_file(path).each do |meaning, describe|
     english, japanese = describe
     emoticons["get_meaning"][:japanese] = meaning
     emoticons["get_emoticon"][:english] = jan
  end
  emoticons
end

def get_japanese_emoticon(path, emoticon)
  emoticons = load_library(path) 
  result = emoticons["get_emoticon"][emoticon]
  if result
    result
  else
    "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(path, emoticon)
  emoticons = load_library(path)
  result = emoticons["get_meaning"][emoticon] 
  if result
    result
  else
    "Sorry, that emoticon was not found"
  end
end