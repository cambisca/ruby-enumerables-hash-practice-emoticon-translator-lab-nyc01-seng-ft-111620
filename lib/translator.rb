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


def load_library(path)
  require 'yaml' 
  emojis = YAML.load_file('lib/emoticons.yml')
  emojis.map do |emotion|
    

end

def get_japanese_emoticon

end

def get_english_meaning

end