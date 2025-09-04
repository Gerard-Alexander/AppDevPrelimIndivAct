# Class Code: 9372
# Team 2: Ruby
# Bernados, Gerard Alexander
# https://onecompiler.com/ruby

def get_input_and_evaluate
  puts "Please Enter your number: "
  num = gets.chomp.to_i
  if num < 0
    puts "Please enter a positive number only."
  else
    # evaluation
    puts "Your input is: #{num}"
    puts "Your number in Reverse: " + reverse_number(num).to_s
    count_odd_and_even(num)
    puts "Your reversed number is " + determine_if_odd_or_even(num)
  end
end

def print_menu
  # formatting print
  puts sprintf("%s\n%s\n%s\n%s\n%s", "This program will do the following: ", "- Reverse your number",
               "- Count the even and odd numbers", "- Determine if the reversed number is odd or even",
               "==============================================")
end

def reverse_number(num)
  # placeholder for the reversed number
  reversed = 0
  # create a temp for num because we need a variable that will hold num with a removed last digit

  while num > 0
    # get the last digit
    last_digit_of_current_no = num % 10
    # put last digit into the reversed
    reversed = reversed * 10 + last_digit_of_current_no
    # remove the last digit to move on to the next number
    num = num / 10
  end
  # return reversed
  reversed
end

def count_odd_and_even(num)
  # .digits will make an array of integers.
  print "Count of Even Numbers: " + num.digits.count { |x| x.even? }.to_s + ", "
  puts "Count of Odd Numbers: " + num.digits.count { |x| x.odd? }.to_s
end

def determine_if_odd_or_even(num)
  reversed = reverse_number(num)
  (reversed % 2 == 0) ? ("even") : ("odd")
end

print_menu
get_input_and_evaluate