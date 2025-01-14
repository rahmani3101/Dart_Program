bool areAnagrams(String str1, String str2) 
{
  List<String> list1 = str1.split('')..sort();
  List<String> list2 = str2.split('')..sort();
  return list1.join() == list2.join();
}

void main() 
{
  String str1 = 'listen';
  String str2 = 'silent';
  print('Are "$str1" and "$str2" anagrams: ${areAnagrams(str1, str2)}');
}
