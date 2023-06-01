---
hide:
  - footer
---
# Prowlarr

## What is Prowlarr?
Prowlarr is a tool used to manage a media server movie collection. It's handy for displaying what movies you have, what you don't, and managing the quality of release you want. 

## Test Python Code

``` python
import random

def roll_dice(num_dice, num_sides): # (1)
  """Rolls a specified number of dice with a specified number of sides.

  Args:
    num_dice: The number of dice to roll.
    num_sides: The number of sides on each die.

  Returns:
    A list of the results of the die rolls.
  """

  rolls = [] # (2)
  for _ in range(num_dice):
    rolls.append(random.randint(1, num_sides))

  return rolls

def main():
  """The main function of the program.

  Gets the number of dice and the number of sides from the user, then rolls the dice and prints the results.
  """

  num_dice = int(input("How many dice do you want to roll? "))
  num_sides = int(input("How many sides do you want each die to have? "))

  rolls = roll_dice(num_dice, num_sides)

  print("The results of the die rolls are:")
  for roll in rolls:
    print(roll)

if __name__ == "__main__":
  main()
```

1. Defining the role function.
2. :material-dice-5: Running the program!