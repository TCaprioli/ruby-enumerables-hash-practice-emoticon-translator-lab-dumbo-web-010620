require "yaml"
require "pry"


def load_library(file)
  
  emoticons = YAML.load_file(file)
  
  hash = {
    :get_meaning => {},
    :get_emoticon => {}
  }
  emoticons.each do |key,value|
    hash[:get_emoticon][value[0]] = emoticons[key][1]
    hash[:get_meaning][value[1]] = key
    
 end 
 hash 
end

def get_japanese_emoticon(file, emoticon)
 emotes = load_library(file)
 
 if emotes[:get_emoticon].include?(emoticon)
   emoticon.find {|japanese| emotes.include?(japanese)}
  
binding.pry  
end

def get_english_meaning
  # code goes here
end