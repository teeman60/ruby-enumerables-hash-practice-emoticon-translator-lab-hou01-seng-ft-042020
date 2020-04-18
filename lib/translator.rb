# require modules here
require 'yaml'
require 'pry'

def load_library(emoticons)
  # code goes here

inner_hash = {}
other_inner_hash = {}

lib = YAML::load_file(File.join(__dir__, 'emoticons.yml'))

<<<<<<< HEAD
  lib.each do |meaning, emo_arr|
    eng_emo = emo_arr[0]
    jap_emo = emo_arr[1]

    inner_hash[jap_emo] = meaning
    other_inner_hash[eng_emo] = jap_emo
  end

  lib.reject! { |k,v| k }
  lib["get_meaning"] = inner_hash
  lib["get_emoticon"] = other_inner_hash

  lib
=======
lib.each do |meaning, emo_arr|
  eng_emo = emo_arr[0]
  jap_emo = emo_arr[1]

  inner_hash[jap_emo] = meaning
  other_inner_hash[eng_emo] = jap_emo
end

lib["get_meaning"] = inner_hash
lib["get_emoticon"] = other_inner_hash

lib.reject! { |k,v| k != get_meaning || k != get_emoticon }

lib
>>>>>>> c6ff2baf5f18cc9427d1104426c56511b8c9f80c

end




<<<<<<< HEAD
def get_japanese_emoticon(emoticons, get_emoticon)
  # code goes here
  load_library(emoticons)["get_emoticon"].each do |k, v|
    if get_emoticon == k
      return v

    end

  end
"Sorry, that emoticon was not found"
=======
def get_japanese_emoticon
  # code goes here

>>>>>>> c6ff2baf5f18cc9427d1104426c56511b8c9f80c
end

def get_english_meaning(emoticons, get_meaning)
  # code goes here
<<<<<<< HEAD
  load_library(emoticons)["get_meaning"].each do |k, v|
    if get_meaning == k
      return v
    end
  end
  "Sorry, that emoticon was not found"
=======
>>>>>>> c6ff2baf5f18cc9427d1104426c56511b8c9f80c
end
