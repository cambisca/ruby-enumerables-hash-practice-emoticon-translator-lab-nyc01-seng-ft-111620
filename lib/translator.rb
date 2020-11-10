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
  #set a hash with get_meaning, get_emoticon as keys, empty hash for value
  emoticons = {"get_meaning" => {}, "get_emoticon" => {}}
  #load the YAML file. It has meaning(angel, angry,..) as key and the symbol as value(describe)
  YAML.load_file(path).each do |meaning, describe|
     #set eng, jan from describe, so eng would be the first value, jan the second
     eng, jan = describe
     emoticons["get_meaning"][jan] = meaning
     emoticons["get_emoticon"][eng] = jan
  end
  emoticons
end

def get_japanese_emoticon(path, emoticon)
  emoticons = load_library(path) #call load_library
  result = emoticons["equiv_emoticon"][emoticon]
  if result
    result
  else
    "Sorry, that emoticon was not found"
  end
end


def get_english_meaning(path, emoticon)
  emoticons = load_library(path)
  result = emoticons["get_meaning"][emoticon] #the same above but change get_meaning
  if result
    result
  else
    "Sorry, that emoticon was not found"
  end
end