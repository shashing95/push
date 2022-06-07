
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
read c
case $c in
  1)echo "sum $((a + b))"  ;;
  2)echo "subtraction $((a - b ))"  ;;
  3)echo "multiplication $((a * b))" ;;
  4)echo  "division $((a / b))"  ;;
  *) echo "enter valid operation"
