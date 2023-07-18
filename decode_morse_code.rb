CODE = { ".-" => "A", "-..." => "B", "-.-." => "C", "-.." => "D", "." => "E",
  "..-." => "F", "--." => "G", "...." => "H", ".." => "I", ".---" => "J", "-.-" => "K",
  ".-.." => "L", "--" => "M", "-." => "N", "---" => "O", ".--." => "P", "--.-" => "Q",
  ".-." => "R", "..." => "S", "-" => "T", "..-" => "U", "...-" => "V", ".--" => "W",
  "-..-" => "X", "-.--" => "Y", "--.." => "Z", "-----" => "0", ".----" => "1",
  "..---" => "2", "...--" => "3", "....-" => "4", "....." => "5", "-...." => "6",
  "--..." => "7", "---.." => "8", "----." => "9" }

  def decode(message)
  words = message.split('   ')
  decoded_words = words.map do |word|
    morse_chars = word.split(' ')
    decoded_chars = morse_chars.map { |char| CODE[char] }
    decoded_chars.join
  end
  decoded_message = decoded_words.join(' ')
  return decoded_message
end

puts decode("-- -.--   -. .- -- .")

puts decode(".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...")

