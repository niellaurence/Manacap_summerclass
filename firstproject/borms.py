import random

def roll():
  return random.randint(1,6) 

def tos():
  return random.choice(['Head', 'Tails'])

play_again = "y"

while play_again.lower() == "y": 
  while True:
     choice = input("choose your game: (D)ice Roll or (C)oins toss ? (Enter Q to quit): ").upper()
    
     if choice == 'D':
      print(f"you rolled a: {roll()}")
     elif choice == 'C':
      print(f"the coin landed on: {tos()}")
     elif choice == 'Q':
      print(f"Thanks for playing Goodbye!")
      break 
     else:
      print("Invalid choice. Please enter 'D' for dice roll or 'C' for coin toss.")
  
  play_again = input("Do you want to play again? (y/n): ").lower()