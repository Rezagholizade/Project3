import random
def user():
    user_choice = input("(s/k/q): ")
    while user_choice.lower() not in ["s","k","q"]:
        print("your choice=s/k/q")
        user_choice = input("(s/k/q): ")
        return user_choice.lower()
def computer():
        return random.choice(["s","k","q"])
def winner(user_choice, computer_choice):
        print("computer_choice{computer_choice}")
        if user_choice==computer_choice:
            return "mosavi"
        elif (user_choice == "s" and computer_choice == "q" or user_choice == "k" and computer_choice == "s" or user_choice == "q" and computer_choice =="k" ):
            return "your win"
        else:
            return "computer win"
def main():
    play_again = "yes"
    while play_again.lower() == "yes":
        user_choice = user()
        computer_choice = computer()
        print(winner(user_choice, computer_choice))
        play_again = input("again? (yes/no): ")
if name == "main":
    main()
