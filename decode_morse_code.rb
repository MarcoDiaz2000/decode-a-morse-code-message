CODE = { ".-" => "A", "-..." => "B", "-.-." => "C", "-.." => "D", "." => "E",
  "..-." => "F", "--." => "G", "...." => "H", ".." => "I", ".---" => "J", "-.-" => "K",
  ".-.." => "L", "--" => "M", "-." => "N", "---" => "O", ".--." => "P", "--.-" => "Q",
  ".-." => "R", "..." => "S", "-" => "T", "..-" => "U", "...-" => "V", ".--" => "W",
  "-..-" => "X", "-.--" => "Y", "--.." => "Z", "-----" => "0", ".----" => "1",
  "..---" => "2", "...--" => "3", "....-" => "4", "....." => "5", "-...." => "6",
  "--..." => "7", "---.." => "8", "----." => "9" }

def decode_char(morse_char)
  CODE[morse_char]
end

def decode_word(morse_word)
  morse_chars = morse_word.split(' ')
  decoded_chars = morse_chars.map { |char| decode_char(char) }
  decoded_chars.join
end

def decode_message(morse_message)
  words = morse_message.split('   ')
  decoded_words = words.map do |word|
    decode_word(word)
  end
  decoded_words.join(' ')
end

puts decode_message("-- -.--   -. .- -- .")
puts decode_message(".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...")
