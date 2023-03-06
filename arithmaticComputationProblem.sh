read -p "Enter a:" a
read -p "Enter b:" b
read -p "Enter c:" c

result=$((a % b + c))

echo "The result of a % b + c is: $result"
