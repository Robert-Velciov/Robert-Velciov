import random
import sys

running_loop = bool()


def try_again():

    c = input("\nTry again? (y/n): ")
    if c == 'y':
        main_func()
    elif c != 'y' and c != 'n':
        print("Invalid entry")
        try_again()
    elif c == 'n':
        sys.exit()


def main_func():

    a = random.randint(1, 9)

    b = input("Can you guess the integer between 1 and 9? You can type \"exit\" to leave the game. Your answer: ")

    running_loop = True

    try_counter = 0

    while running_loop == True:


        if b != 'exit' and b not in ('1', '2', '3', '4', '5', '6', '7', '8', '9'):
            print("Invalid input")
            b = input("Type a valid integer between 1 and 9 or \"exit\": ")
            if b in ('1', '2', '3', '4', '5', '6', '7', '8', '9'):
                b = int(b)
        elif b == 'exit':
            print("Better luck next time!")
            sys.exit()
        else: b = int(b)

        if b == a:
            print("Congratulations! You guessed the number!")
            try_counter = 0
            running_loop = False
            try_again()

        elif b < a:
            print("Slightly bigger...")
            try_counter += 1
            print("Number of tries: " + str(try_counter))
            b = input("Guess again: ")

        elif b > a:
            print("Slightly smaller...")
            try_counter += 1
            print("Number of tries: " + str(try_counter))
            b = input("Guess again: ")

    try_again()

main_func()
