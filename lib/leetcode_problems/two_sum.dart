// Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

// You may assume that each input would have exactly one solution, and you may not use the same element twice.

// You can return the answer in any order.

// Example 1:
//
// Input: nums = [2,7,11,15], target = 9
// Output: [0,1]
// Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].
// Example 2:
//
// Input: nums = [3,2,4], target = 6
// Output: [1,2]
// Example 3:
//
// Input: nums = [3,3], target = 6
// Output: [0,1]

/* Solution 1 */
// approach is using two loop
// comlaxity is n2

class Solution {
  List<int> twoSum(List<int> nums, int target) {
    for (int i = 0; i < nums.length - 1; i++) {
      for (int j = i + 1; j < nums.length; j++) {
        if ((nums[i] + nums[j]) == target) {
          return [i, j];
        }
      }
    }
    return [];
  }
}

/* Solution 2 */
// approach is using single loop

class Solution2 {
  List<int> twoSum(List<int> nums, int target) {
    Map myRecord = {};

    for (int i = 0; i < nums.length; i++) {
      int remain = target - nums[i];
      if (myRecord.containsKey(remain)) {
        return [myRecord[remain], i];
      } else {
        myRecord[nums[i]] = i;
      }
    }
    return [];
  }
}
