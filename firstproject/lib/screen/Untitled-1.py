while True:
    score = 0

    print("1. if the statements are on the same level of ______, then they are on the same block?")
    print("A. Identaton")
    print("B. Loop")
    print("c. if-else statement")
    print("D. None of the above")
    ans = input("Enter your answer: ")

    if ans == "A":
        score += 2
        print("correct")
    else:
        score -= 1
        print("incorrect")

#Question 2
    
    print("2. used to perform different actions based on different conditions?")
    print("A. if-else statement")
    print("B. Loop")
    print("c. Identaton")
    print("D. match Statement")
    ans = input("Enter your answer: ")

    if ans == "D":
        score += 2
        print("correct")
    else:
        score -= 1
        print("incorrect")

#Question 3
    
    print("3. does not require an indexing variable to set beforehand")
    print("A. The while loop")
    print("B. The for Loop")
    print("c. Loop")
    print("D. All of the above")
    ans = input("Enter your answer: ")

    if ans == "B":
        score += 2
        print("correct")
    else:
        score -= 1
        print("incorrect")

#Questio 4
    
    print("4. returns a sequence of numbers from 0 and increments by 1, by default, and ends at a specified number ")
    print("A. The range Function")
    print("B. The continue Statement")
    print("C. The break Statement")
    print("D. None of the above")
    
    ans = input("Enter your answer: ")

    if ans == "A":
        score += 2
        print("correct")
    else:
        score -= 1
        print("incorrect")

#Questio 5
    
    print("5. order of evaluating multiple operators with the same precedence")
    print("A. Operator Overloading")
    print("B. Operator Chaining")
    print("C. Associativity of Operators")
    print("D. Operator Precedence")
    
    ans = input("Enter your answer: ")

    if ans == "C":
        score += 2
        print("correct")
    else:
        score -= 1
        print("incorrect")
#Questio 6
    
    print("6. Which keyword is used to define a function in Python?")
    print("A. func")
    print("B. define")
    print("C. def")
    print("D. function")
    
    ans = input("Enter your answer: ")

    if ans == "C":
        score += 2
        print("correct")
    else:
        score -= 1
        print("incorrect")
#Questio 7
    
    print("7. What is the correct way to comment a single line in Python?")
    print("A. // This is a comment")
    print("B. /* This is a comment */")
    print("C. # This is a comment")
    print("D. <!-- This is a comment -->")
    
    ans = input("Enter your answer: ")

    if ans == "C":
        score += 2
        print("correct")
    else:
        score -= 1
        print("incorrect")

#Questio 8
    
    print("8. Which data type is used to store a sequence of characters?")
    print("A. int")
    print("B. float")
    print("C. string")
    print("D. boolean")
    
    ans = input("Enter your answer: ")

    if ans == "C":
        score += 2
        print("correct")
    else:
        score -= 1
        print("incorrect")

#Questio 9
    
    print("9. What is the output of 'Hello' + 'World'?")
    print("A. 'HelloWorld'")
    print("B. 'Hello World'")
    print("C. 'Hello+World'")
    print("D. Error")
    
    ans = input("Enter your answer: ")

    if ans == "A":
        score += 2
        print("correct")
    else:
        score -= 1
        print("incorrect")

#Questio 10
    
    print("10. Which of the following is an immutable data type in Python?")
    print("A. List")
    print("B. Dictionary")
    print("C. Tuple")
    print("D. Set")
    
    ans = input("Enter your answer: ")

    if ans == "C":
        score += 2
        print("correct")
    else:
        score -= 1
        print("incorrect")

    print(f"\n Your Score is: {score}")

    if score == 20:
        print("Perfect")
        break
    
    elif score > 15 and score < 20:
        print("Good")
        
    
    elif score > 10 and score < 15:
        print("Average")
        choices_input = input("Do you wanna retake or no? ")

        if choices_input.lower() == "no":
            print("Thank you and Godbless")
            break
    else:
        print("Poor")
        choices_input = input("Do you wanna retake or no? ")
        if choices_input.lower() == "no":
            print("Thank you and Godbless")
            break