import UIKit
import Foundation
import XCTest


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



class Tests: XCTestCase {

    func testbubble() {
        let expected = [1, 2, 3]
        let actual = bubSort([2, 3, 1])
        XCTAssertEqual(expected, actual)
    }
 
    func testRepeated() {
        let expected = [1, 1, 2, 2, 3, 3]
        let actual = bubSort([1, 2, 3, 3, 2, 1])
        XCTAssertEqual(expected, actual)
    }
    
    func testNegative() {
        let expected = [-1, 2, 3, 7, 8, 9]
        let actual = bubSort([-1, 2, 3, 7, 8, 9])
        XCTAssertEqual(expected, actual)
        
    }
    
}

// Infrastructure
class TestObserver: NSObject, XCTestObservation {
    func testCase(_ testCase: XCTestCase,
                  didFailWithDescription description: String,
                  inFile filePath: String?,
                  atLine lineNumber: Int) {
        assertionFailure(description, line: UInt(lineNumber))
    }
}
let testObserver = TestObserver()
XCTestObservationCenter.shared.addTestObserver(testObserver)
Tests.defaultTestSuite.run()


