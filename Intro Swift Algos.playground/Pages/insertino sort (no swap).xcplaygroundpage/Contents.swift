func insertionSort<T>(_ array: [T], _ isOrderedBefore: (T, T) -> Bool) -> [T] {
  var sortedArray = array
  for index in 1..<sortedArray.count {
    var currentIndex = index
    let temp = sortedArray[currentIndex]
    while currentIndex > 0 && isOrderedBefore(temp, sortedArray[currentIndex - 1]) {
      sortedArray[currentIndex] = sortedArray[currentIndex - 1]                // 1
      currentIndex -= 1
    }
    sortedArray[currentIndex] = temp                      // 2
  }
  return sortedArray
}

let numbers = [ 10, -1, 3, 9, 2, 27, 8, 5, 1, 3, 0, 26 ]
let letters = [ "b", "a", "d", "c", "e" ]
//let objects = [ obj1, obj2, obj3 ]
//insertionSort(objects) { $0.priority < $1.priority }
print(insertionSort(letters, <))
print(insertionSort(letters, >))
print(insertionSort(numbers, <))
print(insertionSort(numbers, >))
