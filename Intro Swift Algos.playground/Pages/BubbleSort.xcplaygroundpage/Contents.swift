import UIKit

class BubbleSort {
    func bubSort( _ array: [Int]) -> [Int] {
        var arr = array
        let n = arr.count
        for i in 0..<n-1 {
            for j in 0..<n-i-1 {
                if arr[j] > arr[j+1] {
                    //swap
                    let temp = arr[j]
                    arr[j] = arr[j+1]
                    arr[j+1] = temp
                }
            }
        }
        return arr
    }
}
let bubbleSort = BubbleSort()
bubbleSort.bubSort([34,78,0,-3,3,2,1])
