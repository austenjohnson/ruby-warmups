# Write a program that automatically converts English text to Morse code and vice versa.
require 'pry'

@morse_dict = { "a" => ".-","b" => "-...","c" => "-.-.","d" => "-..","e" => ".","f" => "..-.","g" => "--.","h" => "....","i" => "..","j" => ".---","k" => "-.-","l" => ".-..","m" => "--","n" => "-.","o" => "---","p" => ".--.","q" => "--.-","r" => ".-.","s" => "...","t" => "-","u" => "..-","v" => "...-","w" => ".--","x" => "-..-","y" => "-.--","z" => "--.."," " => " ", "1" => ".----","2" => "..---","3" => "...--","4" => "....-","5" => ".....","6" => "-....","7" => "--...","8" => "---..","9" => "----.","0" => "-----", "!" => "!", "?" => "?", "," => "," }
@letters = []
@morse_code = []
@english_conversion = []

def english_encoder
  puts "Enter some text and I will convert it to Morse Code."
  english_to_convert = gets.chomp
  word_list = english_to_convert.downcase.split("")
  word_list.each do |letter|
    morse = @morse_dict[letter]
    @morse_code << morse
  end
  @morse_code.join(" ")
end
p english_encoder

def morse_decoder(morse_to_convert)
  morse_list = morse_to_convert.split(" ")
  morse_list.each do |morse|
    letter = @morse_dict.each {|key, val| val == morse ? @english_conversion << key : next }
    # @english_conversion << letter
  binding.pry
  end
end
morse_decoder("-.-. --- -. ...- . .-. -   -- .   - ---   -- --- .-. ... .")