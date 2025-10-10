#!/usr/bin/env bash
# shellcheck disable=SC2162

echo -e "\nNumberJack\n"

ch=0

while [[ $ch -ne 3 ]]; do
    cat <<EOF

    PLAY : Hit 1 and enter.
    HELP : Hit 2 and enter.
    EXIT : Hit 3 and enter.

EOF

    read -rp "Enter your choice: " ch

    if [[ $ch -eq 1 ]]; then
        x=0
        c=0
        p=0

        read -rp "Enter any number between 0 and 9: " n

        while [[ $c -eq 0 ]]; do
            r=($(shuf -i 0-9 -n 10))
            echo "Random numbers: ${r[*]}"

            for i in {1..10}; do
                a[$i]=$i
            done

            echo "Indexes: ${a[*]}"

            read -t 5 -rp "Enter the index of your number: " x
            if [[ $? -gt 128 ]]; then
                c=1
                break
            fi

            if [[ ${r[$((x - 1))]} -eq $n ]]; then
                echo "Great!"
                ((p += 1))
            else
                c=1
                break
            fi
        done

    elif [[ $ch -eq 2 ]]; then
        echo "HELP: INSTRUCTIONS TO PLAY THE GAME."
        echo "1. Enter 1 to play the game."
        echo "2. You’ll be shown 10 random numbers."
        echo "3. Find your chosen number’s index before time runs out!"
        echo "4. Wrong index or timeout ends the game."

    elif [[ $ch -eq 3 ]]; then
        echo "Exiting the game. Goodbye!"
        break

    else
        echo "Invalid choice. Please select 1, 2, or 3."
    fi

    if [[ $c -eq 1 ]]; then
        echo -e "\nGAME OVER\n"
        echo "You scored $p points."
    fi
done
