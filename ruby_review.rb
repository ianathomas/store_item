# recipes = ["pie", "hummus", "sandwich", "potatoe", "salad"]
# languages = ["spanish", "french", "german", "swahili", "hindi"]
# if recipes
#   p "Sally and Sam should date"
# else
#   p "Sally and Sam should not date"
# end
# index = 0
# index2 = 0
# crepes = false
# french = false
# while index < recipes.length
#   if recipes[index] == "crepes"
#     crepes = true
#   end
#     index += 1
# end
# while index2 < languages.length  
#   if languages[index2] == "french"
#     french = true
#   end
#     index2 += 1
# end
# if crepes == true || french == true 
#   p "Sam and Sally should marry"
# else
# p "Sam and Sally should not marry"
# end
bank_info = []
5.times do
  puts "Enter first name, last name, and email"
  input_first_name = gets.chomp
  input_last_name = gets.chomp
  input_email = gets.chomp
  input_account_num = rand 9999999999
 hash = {:first_name => input_first_name, :last_name => input_last_name, :email => input_email, :acct => input_account_num}
  bank_info << hash
end
p bank_info
