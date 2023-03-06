# Initialize the dictionary
declare -A results

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

# Print the results in the dictionary
echo "Results:"
for key in "${!results[@]}"
do
  echo "$key = ${results[$key]}"
done
