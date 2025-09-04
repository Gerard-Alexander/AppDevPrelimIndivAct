module Methods

  def self.get_input_and_evaluate
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

  def self.print_menu
    # formatting print
    puts sprintf("%s\n%s\n%s\n%s\n%s", "This program will do the following: ", "- Reverse your number",
                 "- Count the even and odd numbers", "- Determine if the reversed number is odd or even",
                 "==============================================")
  end

  def self.reverse_number(num)
      # placeholder for the reversed number
      reversed = 0
      # create a temp for num because we need a variable that will hold num with a removed last digit
      temp = num

      while temp > 0
        # get the last digit
        last_digit_of_current_no = temp%10
        # put last digit into the reversed
        reversed = reversed*10 + last_digit_of_current_no
        # remove the last digit to move on to the next number
        temp = temp/10
      end
      # return reversed
      reversed
    end

  def self.count_odd_and_even(num)
    # .digits will make an array of integers.
    print "Count of Even Numbers: " + num.digits.count{|x| x.even?}.to_s + ", "
    puts "Count of Odd Numbers: " + num.digits.count{|x| x.odd?}.to_s
  end

  def self.determine_if_odd_or_even(num)
    reversed = reverse_number(num)
    (reversed % 2==0) ? ("even") : ("odd")
  end

end
