//
//  Algorithm.swift
//  leetcode
//
//  Created by xgd on 2022/3/26.
//

import Foundation
import AppKit


class Algorithm {
    ///189. 轮转数组
    /// 给你一个数组，将数组中的元素向右轮转 k 个位置，其中 k 是非负数。
   static func rotate(_ nums: inout [Int], _ kk: Int) {
       let count = nums.count
       let k = kk % count
       guard k <= count, count > 1, k > 0 else { return }
       var lastValue = Int.min
       for idx in 1 ... k {
           lastValue = nums[count - idx]
           var targetIdx = k - idx
           while true {
               let tartetValue = nums[targetIdx]
               nums[targetIdx] = lastValue
               lastValue = tartetValue
               targetIdx += k
               if targetIdx >= count - idx {
                   nums[count - idx] = lastValue
               }
           }
       }
    }
    
    /// 283. 移动零
    static func moveZeroes(_ nums: inout [Int]) {
        let count = nums.count
        guard count > 1 else { return }
        var currentIdx = 0
        for (idx,obj) in nums.enumerated() {
            if obj != 0 {
                nums[currentIdx] = nums[idx]
                currentIdx += 1
            }
        }
        guard currentIdx < count else { return }
        for idx in currentIdx ..< count {
            nums[idx] = 0
        }
    }
    
    /// 167. 两数之和 II - 输入有序数组
    static func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        return twoSum1(numbers, from: 0, to: numbers.count - 1, target)
    }
    
    fileprivate static  func findValue(_ value: Int, numbers: [Int],minIdx: Int, maxIdx: Int) -> Int? {
        guard minIdx <= maxIdx else { return nil }
        let middleIdx = (minIdx + maxIdx) / 2
        let middleValue = numbers[middleIdx]
        if middleValue > value {
            return findValue(value, numbers: numbers, minIdx: minIdx, maxIdx: middleIdx - 1)
        } else if middleValue == value {
            return middleIdx
        } else {
            return findValue(value, numbers: numbers, minIdx: middleIdx + 1, maxIdx: middleIdx)
        }
    }
    
    fileprivate static func twoSum1(_ numbers: [Int], from: Int, to: Int, _ target: Int) -> [Int] {
        let count = numbers.count
        guard count > 1, to >= from, from >= 0, to < count else { return [] }
        // 7 , 1 ,3
        for idx in from ... to {
            let obj = numbers[idx]
            let otherValue = target - obj
            if let otherIdx = findValue(otherValue, numbers: numbers, minIdx: idx + 1, maxIdx: to) {
                return [idx + 1, otherIdx + 1]
            }
        }
        return []
    }
    
    // 136. 只出现一次的数字
    static func singleNumber(_ nums: [Int]) -> Int {
        var numSet = Set<Int>()
        for idx in nums {
            if numSet.contains(idx) {
                numSet.remove(idx)
                continue
            }
            numSet.insert(idx)
        }
        return numSet.first ?? 0
    }
    
}

