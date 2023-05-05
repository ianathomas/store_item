api_key = ""

require "http"


system "clear"

puts "Welcome to the dictioary app!"
puts "Enter a word: "
word = gets.chomp

while word != "q"

response = HTTP.get("https://api.wordnik.com/v4/word.json/#{word}/definitions?limit=200&includeRelated=false&useCanonical=false&includeTags=false&api_key=#{api_key}"
)

dictionary_word = response.parse(:json)

definition = dictionary_word[0]["text"]

response1 = HTTP.get("https://api.wordnik.com/v4/word.json/#{word}/topExample?useCanonical=false&api_key=#{api_key}")

dictionary_example = response1.parse(:json)

example_first = dictionary_example["text"]

response2 = HTTP.get("https://api.wordnik.com/v4/word.json/#{word}/pronunciations?useCanonical=false&limit=50&api_key=#{api_key}")

dictionary_pronounciation = response2.parse(:json)

pronounciation = dictionary_pronounciation[0]["raw"]


p definition
p example_first
p pronounciation

puts "Enter a word"
new_word = gets.chomp
word = new_word
end
# {"provider": {"id": 720},
#   "year": 2008,
#   "rating": 9720,
#   "url": "http://blogs.consumerreports.org/home/2008/04/keep-food-fresh.html",
#   "word": "fish",
#   "text": "Meat, poultry, and fish• Place raw meat, poultry, or fish in a covered dish to keep the juices from dripping onto other foods, and store it in the back of the refrigerator.",
#   "documentId": 29321217,
#   "exampleId": 1011437414,
#   "title": "Tip of the Day: How to keep food fresh"
# }
