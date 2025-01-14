void findPairs(List<int> arr, int target) 
{
  for (int i = 0; i < arr.length; i++) 
  {
    for (int j = i + 1; j < arr.length; j++) 
    {
      if (arr[i] + arr[j] == target) 
      {
        print('Pair: (${arr[i]}, ${arr[j]})');
      }
    }
  }
}

void main() 
{
  List<int> arr = [2, 4, 3, 5, 7, 8, 1];
  int target = 9;
  findPairs(arr, target);
}
