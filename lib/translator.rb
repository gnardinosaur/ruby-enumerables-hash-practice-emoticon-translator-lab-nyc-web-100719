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
    translate_hash[:get_meaning].merge!(translate_hash[:get_meaning] = {
      "#{meaning}" => "#{arr[1]}"
    })
    #translate_hash[:get_emoticon] = {
     # "#{arr[1]}" => "#{arr[0]}"
    #}
    p translate_hash
  end
  translate_hash
end

def get_japanese_emoticon(file, emoticon)
  load_library(file)
end

def get_english_meaning(file, emoticon)
  load_library(file)
end