import Darwin
func mergeSortBottomUp<T>(_ a: [T], _ isOrderedBefore: (T, T) -> Bool) -> [T] {
  let n = a.count

  var z = [a, a]      // 1
  var d = 0

  var width = 1
  while width < n {   // 2

    var i = 0
    while i < n {     // 3

      var j = i
      var l = i
      var r = i + width

      let lmax = min(l + width, n)
      let rmax = min(r + width, n)

      while l < lmax && r < rmax {                // 4
        if isOrderedBefore(z[d][l], z[d][r]) {
          z[1 - d][j] = z[d][l]
          l += 1
        } else {
          z[1 - d][j] = z[d][r]
          r += 1
        }
        j += 1
      }
      while l < lmax {
        z[1 - d][j] = z[d][l]
        j += 1
        l += 1
      }
      while r < rmax {
        z[1 - d][j] = z[d][r]
        j += 1
        r += 1
      }

      i += width*2
    }

    width *= 2
    d = 1 - d      // 5
  }
  return z[d]
}
let bin =  [1, 2, 3,8,3,6,4,7]
let bin2 = [3, 5, 6,7,9,3,5,6,7,8]
  
print(mergeSortBottomUp(bin,>))
print(mergeSortBottomUp(bin2,<))
