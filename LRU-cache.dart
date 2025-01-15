import 'dart:collection';

class LRUCache 
{
  final int capacity;
  late LinkedHashMap<int, int> cache;

  LRUCache(this.capacity)
  {
    cache = LinkedHashMap<int, int>();
  }

  int get(int key) 
  {
    if (!cache.containsKey(key))
    {
      return -1;
    }
    int value = cache[key]!;
    cache.remove(key);
    cache[key] = value;
    return value;
  }

  void put(int key, int value)
  {
    if (cache.length >= capacity)
    {
      cache.remove(cache.keys.first); // Removes least recently used
    }
    cache[key] = value;
  }
}

void main()
{
  LRUCache cache = LRUCache(2);
  cache.put(1, 1);
  cache.put(2, 2);
  print(cache.get(1)); // returns 1
  cache.put(3, 3);     // evicts key 2
  print(cache.get(2)); // returns -1 (not found)
  cache.put(4, 4);     // evicts key 1
  print(cache.get(1)); // returns -1 (not found)
  print(cache.get(3)); // returns 3
  print(cache.get(4)); // returns 4
}
