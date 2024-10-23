# Decision Making Assistant

def get_user_input():
    print("Welcome to the Decision Making Assistant!")
    print("Please answer the following questions to help me suggest a decision.")

    # Gather user preferences
    importance_cost = int(input("On a scale of 1 to 10, how important is cost to you? "))
    importance_quality = int(input("On a scale of 1 to 10, how important is quality to you? "))
    importance_time = int(input("On a scale of 1 to 10, how important is time (quick delivery) to you? "))
    
    return importance_cost, importance_quality, importance_time

def suggest_decision(cost, quality, time):
    # Decision logic based on user input
    if cost > quality and cost > time:
        print("It seems that cost is the most important factor for you. You should choose the budget-friendly option.")
    elif quality > cost and quality > time:
        print("Quality is your top priority! You should choose the premium option.")
    elif time > cost and time > quality:
        print("Time matters most! You should pick the fastest option available.")
    else:
        print("Your priorities are balanced. Consider a compromise between all three factors.")

def main():
    # Get user input
    cost, quality, time = get_user_input()

    # Suggest a decision based on input
    suggest_decision(cost, quality, time)

if __name__ == "__main__":
    main()
