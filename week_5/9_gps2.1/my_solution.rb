# U2.W5: Bakery Challenge GPS

# I worked on this challenge with: Michael Weiss

# Our Best Refactored Solution  
def bakery_num(num_of_people, fav_food)
  food_servings = {"pie" => 8, "cake" => 6, "cookie" => 1}  # Initialize the food and the quantity 
  fav_food_qty = food_servings[fav_food] 
    
  raise ArgumentError.new("You can't make that food") if !food_servings.has_key?(fav_food)
  
  if num_of_people % fav_food_qty == 0
    num_of_food = num_of_people / fav_food_qty
    return "You need to make #{num_of_food} #{fav_food}(s)."
  else 
    food_qty = food_servings.clone
    food_servings.each_key do |key|
      break if num_of_people == 0
      food_qty[key] = num_of_people / food_servings[key]
      num_of_people %= food_servings[key]
    end
    return "You need to make #{food_qty["pie"]} pie(s), #{food_qty["cake"]} cake(s), and #{food_qty["cookie"]} cookie(s)." # This prints the needed quantities
  end
end

# Another Refactored Solution 
# Not good if the size of food_servings is large
def bakery_num_2(num_of_people, fav_food)
  food_servings = {"pie" => 8, "cake" => 6, "cookie" => 1}  # Initialize the food and the quantity 
  fav_food_qty = food_servings[fav_food] 
    
  raise ArgumentError.new("You can't make that food") if !food_servings.has_key?(fav_food)
  
  if num_of_people % fav_food_qty == 0
    num_of_food = num_of_people / fav_food_qty
    return "You need to make #{num_of_food} #{fav_food}(s)."
  else 
    pie_qty = num_of_people / food_servings["pie"] 
    num_of_people = num_of_people % food_servings["pie"] 
     
    cake_qty = num_of_people / food_servings["cake"] 
    num_of_people = num_of_people % food_servings["cake"]
      
    cookie_qty = num_of_people
    
    return "You need to make #{pie_qty} pie(s), #{cake_qty} cake(s), and #{cookie_qty} cookie(s)."
  end
end    


#DRIVER CODE-- DO NOT MODIFY ANYTHING BELOW THIS LINE (except in the section at the bottom)
# These are the tests to ensure it's working. 
# These should all print true if the method is working properly.
p bakery_num(24, "cake") == "You need to make 4 cake(s)."
p bakery_num(41, "pie") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)."
p bakery_num(24, "cookie") == "You need to make 24 cookie(s)."
p bakery_num(4, "pie") == "You need to make 0 pie(s), 0 cake(s), and 4 cookie(s)."
p bakery_num(130, "pie") == "You need to make 16 pie(s), 0 cake(s), and 2 cookie(s)."
# p bakery_num(3, "apples") # this will raise an ArgumentError

# You SHOULD change this driver code. Why? Because it doesn't make sense.
p bakery_num(41, "cake") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)." # WHAAAAAT? I thought I said I wanted cake!


#  Reflection 




