#!/bin/zsh
# Initialize the dictionary
declare -a results

# Compute a + b * c and store the result in the dictionary
a=2
b=3
c=4
result=$((a + b * c))
results["a + b * c"]=$result

# Compute c + a / b and store the result in the dictionary
a=6
b=2
c=4
result=$((c + a / b))
results["c + a / b"]=$result

# Compute a % b + c and store the result in the dictionary
a=11
b=3
c=4
result=$((a % b + c))
results["a % b + c"]=$result

# Sort the results in descending order
sorted_keys=($(echo "${!results[@]}" | tr ' ' '\n' | sort -nrk3 | tr '\n' ' '))
sorted_values=($(echo "${results[@]}" | tr ' ' '\n' | sort -nr | tr '\n' ' '))

# Print the results in descending order
echo "Results (in descending order):"
for i in ${!sorted_keys[@]}
do
  echo "${sorted_keys[$i]} = ${sorted_values[$i]}"
done
