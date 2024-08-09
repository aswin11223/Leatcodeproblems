class Solution {
  List<int> twoSum(List<int> nums, int target) {
    // Creating an empty list to store the result.
    List<int> result = [];

    // Iterating through the list of numbers.
    for (int i = 0; i < nums.length; i++) {
      for (int j = i + 1; j < nums.length; j++) {
        // Checking if the sum of two numbers equals the target.
        if (nums[i] + nums[j] == target) {
          // Storing the indices of the numbers that add up to the target.
          result = [i, j];
          break; // Breaking the inner loop once we find a match.
        }
      }
      if (result.isNotEmpty) {
        break; // Breaking the outer loop once we have the result.
      }
    }
    return result; 
    // Returning the result list.
  }
}

void main() {
  List<int> nums = [2, 3, 3, 4];
  int target = 6; // Change the target to 6 to match the sum of 3 + 3

  // Creating an instance of the Solution class.
  Solution solution = Solution();

  // Printing the result of the twoSum function.
  print(solution.twoSum(nums, target));
}
