import random
import sys


def word_test(x):
    if x.lower() != 'rock' and x.lower() != 'paper' and x.lower() != 'scissors':
        print("This is not part of the game...")


def cond_test(y, z):
    if y == "rock" and z == "paper":
        print("I chose paper! You lose!")
    elif y == "rock" and z == "rock":
        print("I chose rock! Draw!")
    elif y == "rock" and z == "scissors":
        print("I chose scissors! You win!")

    elif y == "paper" and z == "paper":
        print("I chose paper! Draw!")
    elif y == "paper" and z == "rock":
        print("I chose rock! You win!")
    elif y == "paper" and z == "scissors":
        print("I chose scissors! You lose!")

    elif y == "scissors" and z == "paper":
        print("I chose paper! You win")
    elif y == "scissors" and z == "rock":
        print("I chose rock! You lose!")
    elif y == "scissors" and z == "scissors":
        print("I chose scissors! Draw!")


def main_func():

    a = ["rock", "paper", "scissors"]
    b = input("Rock, paper, or scissors? ")
    b = b.lower()

    word_test(b)

    c = random.choice(a)

    cond_test(b, c)

    try_again()


def try_again():
    d = input("\nTry again? (y/n): ")
    if d == 'y':
        main_func()
    elif d != 'y' and d != 'n':
        print("Invalid entry")
        try_again()
    elif d == 'n':
        sys.exit()


main_func()
