#!/bin/bash
# ==========================================
#   Simple Calculator Program in Bash
#   Supports +, -, *, /
#   With input validation and repeat option
# ==========================================

# Function to validate input (check if integer)
is_number() {
    local num="$1"
    if [[ "$num" =~ ^-?[0-9]+$ ]]; then
        return 0   # valid number
    else
        return 1   # invalid number
    fi
}

# Main loop: runs until user chooses to exit
while true; do
    echo "=========================================="
    echo "          WELCOME TO BASH CALCULATOR       "
    echo "=========================================="
    echo ""

    # Read first number
    while true; do
        echo -n "Enter first number: "
        read n1
        if is_number "$n1"; then
            break
        else
            echo "Invalid input! Please enter an integer."
        fi
    done

    # Read second number
    while true; do
        echo -n "Enter second number: "
        read n2
        if is_number "$n2"; then
            break
        else
            echo "Invalid input! Please enter an integer."
        fi
    done

    # Menu for operator selection
    echo ""
    echo "Choose an operation:"
    echo "  1) Addition (+)"
    echo "  2) Subtraction (-)"
    echo "  3) Multiplication (*)"
    echo "  4) Division (/)"
    echo "  5) Exit"
    echo -n "Enter choice [1-5]: "
    read choice

    case $choice in
        1)
            echo "Performing Addition..."
            echo "Result: $n1 + $n2 = $((n1+n2))"
            ;;
        2)
            echo "Performing Subtraction..."
            echo "Result: $n1 - $n2 = $((n1-n2))"
            ;;
        3)
            echo "Performing Multiplication..."
            echo "Result: $n1 * $n2 = $((n1*n2))"
            ;;
        4)
            echo "Performing Division..."
            if [ "$n2" -eq 0 ]; then
                echo "Error: Division by zero is not allowed!"
            else
                echo "Result: $n1 / $n2 = $((n1/n2))"
            fi
            ;;
        5)
            echo "Exiting Calculator. Goodbye!"
            exit 0
            ;;
        *)
            echo "Invalid choice! Please select between 1-5."
            ;;
    esac

    # Ask user if they want to continue
    echo ""
    echo "Do you want to perform another calculation? (y/n)"
    read again
    if [[ "$again" != "y" && "$again" != "Y" ]]; then
        echo "Exiting Calculator. Goodbye!"
        exit 0
    fi
done
