# Ask for the user's name and age
name = input("What is your name? ")
age = int(input("How old are you? "))

# Calculate the year they will turn 100
current_year = 2025
year_100 = current_year + (100 - age)

# Display the result
print(f"{name}, you will turn 100 years old in the year {year_100}.")
