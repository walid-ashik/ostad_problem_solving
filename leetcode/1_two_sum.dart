class Solution {
  List<int> twoSum(List<int> nums, int target) {
    final _map = Map();

    for (int i = 0; i < nums.length; i++) {
      int sum = target - nums[i];

      if (_map.containsKey(nums[i])) {
        return [_map[nums[i]], i];
      } else {
        _map.addAll({sum: i});
      }
    }
    return [];
  }
}

void main() {
  assert(Solution().twoSum([2, 7, 11, 15], 9).toString() == [0, 1].toString());
}
