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
  emoticons = {"emotion" => {}, "emoticon" => {}}
  
  YAML.load_file(path).each do |meaning, describe|
     eng, jan = describe
     emoticons["emotion"][jan] = meaning
     emoticons["equiv_emoticon"][eng] = jan
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

def get_english_meaning

end