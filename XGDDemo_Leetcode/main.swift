//
//  main.swift
//  leetcode
//
//  Created by xgd on 2022/3/18.
//

import Foundation

print("Hello, World!")

debugPrint("二查分查找")
func search(_ nums: [Int], _ target: Int) -> Int {
    var result = -1
    var minIdx = 0
    var maxIdx = nums.count - 1

    while maxIdx >= minIdx {
        let middle = (minIdx + maxIdx) / 2
        let middleValue = nums[middle]
        if middleValue > target {
            maxIdx = middle - 1
        } else if middleValue == target {
            result = middle
            break
        } else {
            minIdx = middle + 1
        }
    }
    return result
}
print(search([1, 3, 4, 4, 5 , 7 , 8], 4))

debugPrint("查找首个问题版本")
func isBadVersion(_ value: Int) -> Bool {
    return value >= 3
}

func firstBadVersion(_ n: Int) -> Int {
        var minIdx = 1
        var maxIdx = n
        var result = maxIdx
        while maxIdx >= minIdx {
            let mid = (maxIdx + minIdx) / 2
            if isBadVersion(mid) {
                if !isBadVersion(mid - 1) {
                    result = mid
                    break
                }
                maxIdx = mid - 1
                result = mid
            } else {
                if isBadVersion(mid + 1) {
                    result = mid + 1
                    break
                }
                minIdx = mid + 1
            }
    }
    return result
}
print(firstBadVersion(8))


debugPrint("数字插入的位置")
func searchInsert(_ nums: [Int], _ target: Int) -> Int {
    if nums.isEmpty { return 0 }
    if nums.first! > target { return 0 }
    if nums.last! < target { return nums.count }
    var minIdx = 0
    var maxIdx = nums.count - 1
    while maxIdx >= minIdx {
        let mid = (maxIdx + minIdx) / 2
        if nums[mid] > target {
            maxIdx = mid - 1
        } else if nums[mid] == target {
            return target
        } else {
            minIdx = mid + 1
        }
    }
    return minIdx
}
print(searchInsert([1,3,5,6], 5))


debugPrint("977. 有序数组的平方")

func sortedSquares(_ nums: [Int]) -> [Int] {
    if nums.isEmpty { return nums }
    var newNums = nums.map(){
        return $0 * $0
    }

    func sort(_ array: inout [Int], step: Int) {
        guard step > 0 else { return }
        let endIdx = array.count - 1
        var startIdx = 0
        while startIdx + step <= endIdx {
            var compareIdx = endIdx
            while compareIdx >= step {
                let stepIdx = compareIdx - step
                if stepIdx < startIdx { break }
                if array[stepIdx] > array[compareIdx] {
                    (array[stepIdx], array[compareIdx]) = (array[compareIdx], array[stepIdx])
                }
                compareIdx = stepIdx
            }
            startIdx += 1
        }
        sort(&array, step: step / 2)
    }
    sort(&newNums, step: newNums.count/2)
    return newNums
}

debugPrint(sortedSquares([0,12]))


//let value: Double = 2000
//debugPrint(value.formateSelfUnit(bit: 1))
//
debugPrint(Sort.methon7([1, 8, 2, 9, 6, 5, 10, 16, 20, 3, 2]))


var arr = [1,2]
Algorithm.rotate(&arr, 0)
debugPrint(arr)



var arr1 = [0,1,0,3,12]
Algorithm.moveZeroes(&arr1)
debugPrint(arr1)


var arr2 = [-1,-1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
debugPrint(Algorithm.twoSum(arr1, 4))


var nums = [2,2,1]
debugPrint(Algorithm.singleNumber(nums))




