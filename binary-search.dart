int binarySearch(List<int> arr, int target) 
{
  int left = 0, right = arr.length - 1;
  while (left <= right) 
  {
    int mid = (left + right) ~/ 2;
    if (arr[mid] == target) 
      return mid;
    if (arr[mid] < target) 
    {
      left = mid + 1;
    } 
    else 
    {
      right = mid - 1;
    }
  }
  return -1;
}

void main() 
{
  List<int> arr = [2, 3, 4, 10, 40];
  int target = 10;
  int result = binarySearch(arr, target);
  if (result != -1) 
  {
    print('Element found at index $result');
  } 
  else 
  {
    print('Element not found');
  }
}
