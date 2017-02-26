# Create a calcultor
# 1. ask the user for 2 numbers
# 2. ask the user whether they want to add, subtract or multiply
# 3. return the result

# Bonus: If 42, tell the user the meaning of life

def add(x, y)
  answer = x + y
  display (answer)
end

def minus(x, y)
  answer = x - y
  display(answer)
end

def multiply(x, y)
  answer = x * y
  display(answer)
end

def display(answer)
  puts "Your result: #{answer}"
  if answer == 42
    puts "meaning of life"
  end
  puts "Let's go again!"
end

loop do
  puts "Hey there - I am a calcultor! Give me two numbers to begin with please..."
  x, y = gets.chomp.split.map(&:to_i)

  puts "Do you want to add, subtract or mutliply these two numbers?"
  answer = gets.chomp.downcase

  # add
  if answer == "add"
    add(x,y)

  # subtract
  elsif answer == "subtract"
    minus(x,y)

  # multiply
  elsif answer == "multiply"
    multiply(x,y)
  else
    break
    puts "Hey, please try again! I didn't recognise what you just wrote! Use numbers only."
  end
end
