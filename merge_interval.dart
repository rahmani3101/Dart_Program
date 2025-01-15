List<List<int>> mergeIntervals(List<List<int>> intervals)
{
  intervals.sort((a, b) => a[0].compareTo(b[0]));
  List<List<int>> result = [];

  for (var interval in intervals)
  {
    if (result.isEmpty || result.last[1] < interval[0]) 
    {
      result.add(interval);
    } 
    else 
    {
      result.last[1] = result.last[1] > interval[1] ? result.last[1] : interval[1];
    }
  }

  return result;
}

void main()
{
  List<List<int>> intervals = [[1, 3], [2, 6], [8, 10], [15, 18]];
  print('Merged intervals: ${mergeIntervals(intervals)}');
}
