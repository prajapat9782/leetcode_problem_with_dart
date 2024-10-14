// Given an integer x, return true if x is a
// palindrome, and false otherwise.

// Solution

// algorithm
// Initialize a new variable reverseNum to 0.
// Initialize a new variable temp to num
// While temp is not equal to 0:
// Calculate the remainder when the temp is divided by 10 and store it in a variable digit.
// Multiply reverseNum by 10 and add the digit to it.
// Divide temp by 10 and discard any remainder.
// If num is equal to reverseNum, return true. (num is a palindrome number)
// Otherwise, return false. (num is not a palindrome number)

class Solution {
  bool isPalindrome(int x) {
    int reverse = 0;
    int temp = x; // key point

    while (temp != 0) {
      // get last digit of the number
      int remainder = temp % 10; // 121%10 = 1

      // add to reverseNumber variable for compare
      reverse = 10 * reverse + remainder;

      // get remaining value and follow same process
      temp = temp ~/ 10; //. 121 ~/ 10 = 12
    }

    if (x == reverse) {
      return true;
    } else {
      return false;
    }
  }
}

// Solution 2
// algorithm
/*
Convert “num” into a string “str”
Initialize two pointers “left” and “right” pointing to the start and end of “str”, respectively
While “left” is less than or equal to “right”, do the following:
If the characters at “left” and “right” are not equal, set “isPalindrome” to false and break the loop
Otherwise, increment “left” and decrement “right”
If the loop completes without breaking, set “isPalindrome” to true
Return “isPalindrome”
 */

class Solution2 {
  bool isPalindrome(int x) {
    String myValue = x.toString();

    int left = 0;
    int right = myValue.length - 1;

    while (left <= right) {
      if (myValue[left] != myValue[right]) {
        return false;
      } else {
        left++;
        right--;
      }
    }

    return true;
  }
}
