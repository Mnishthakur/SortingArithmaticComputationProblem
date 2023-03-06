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

# Sort the results in ascending order
sorted_results=($(for key in "${!results[@]}"; do echo "$key ${results[$key]}"; done | sort -k2 -n))

# Print the sorted results
echo "Computation results in ascending order:"
for result in "${sorted_results[@]}"
do
  echo "$result"
done
