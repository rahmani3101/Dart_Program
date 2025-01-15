int lengthOfLongestSubstring(String s)
{
  Map<String, int> charMap = {};
  int maxLength = 0;
  int left = 0;

  for (int right = 0; right < s.length; right++) 
  {
    if (charMap.containsKey(s[right])) 
    {
      left = charMap[s[right]]! + 1;
    }
    charMap[s[right]] = right;
    maxLength = max(maxLength, right - left + 1);
  }

  return maxLength;
}

int max(int a, int b) => a > b ? a : b;

void main()
{
  String s = "abcabcbb";
  print('Length of longest substring without repeating characters: ${lengthOfLongestSubstring(s)}');
}
