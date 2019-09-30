# require modules here

a = {:nick => "male"}
b = {:heather => "female", :nick => "?"}

a.merge!(b)
p a


def load_library(file)
  require "yaml"
  file_hash = YAML.load_file(file)
  translate_hash = {
    :get_meaning => {},
    :get_emoticon => {}
  }
  file_hash.each do |meaning, arr|
    meaning_hash = {
      "#{arr[1]}" => "#{meaning}"
    }
    translate_hash[:get_meaning] = translate_hash[:get_meaning].merge!(meaning_hash)
    p translate_hash 
    #translate_hash[:get_emoticon] = {
     # "#{arr[1]}" => "#{arr[0]}"
    #}
  end
  translate_hash
end

def get_japanese_emoticon(file, emoticon)
  load_library(file)
end

def get_english_meaning(file, emoticon)
  load_library(file)
end