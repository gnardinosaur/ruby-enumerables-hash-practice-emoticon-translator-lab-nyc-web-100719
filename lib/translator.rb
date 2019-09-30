# require modules here

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
    emoticon_hash = {
      "#{arr[0]}" => "#{arr[1]}"
    }
    translate_hash[:get_emoticon] = translate_hash[:get_emoticon].merge!(emoticon_hash)
  end
  translate_hash
end

def get_japanese_emoticon(file, emoticon)
  translate_hash = load_library(file)
  japanese_version = translate_hash[:get_emoticon][emoticon]
  japanese_version
end

def get_english_meaning(file, emoticon)
  load_library(file)
end