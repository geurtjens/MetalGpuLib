//
//  File.swift
//  
//
//  Created by Michael Geurtjens on 16/3/2023.
//

import Foundation

/// This is a library that checks the contents of arrays for patterns we might be interested in
struct GpuBuffer_Debug {
    
    static func CountNonZeroEntries(array: [UInt8]) -> Int {
        
        let size = array.count
        
        var count = 0
        for i in 0..<size {
            if array[i] != 0 {
                count += 1
            }
        }
        return count
    }
    
    static func CountNonZeroEntries(array: [UInt32]) -> Int {
        
        let size = array.count
        
        var count = 0
        for i in 0..<size {
            if array[i] != 0 {
                count += 1
            }
        }
        return count
    }
    
    
    static func Sum(array: [UInt8]) -> Int {
        
        let size = array.count
        
        var count = 0
        for i in 0..<size {
            count += Int(array[i])
        }
        return count
    }
    
    static func Sum(array: [UInt16]) -> Int {
        
        let size = array.count
        
        var count = 0
        for i in 0..<size {
            count += Int(array[i])
        }
        return count
    }
    
    static func Sum(array: [UInt32]) -> Int {
        
        let size = array.count
        
        var count = 0
        for i in 0..<size {
            count += Int(array[i])
        }
        return count
    }
    
    static func NoZeros(array: [UInt8]) -> Bool {
        
        let size = array.count
        
        for i in 0..<size {
            if array[i] == 0 {
                return false
            }
        }
        return true
    }
    
    static func NoZeros(array: [UInt16]) -> Bool {
        
        let size = array.count
        
        for i in 0..<size {
            if array[i] == 0 {
                return false
            }
        }
        return true
    }
    
    static func NoZeros(array: [UInt32]) -> Bool {
        
        let size = array.count
        
        for i in 0..<size {
            if array[i] == 0 {
                return false
            }
        }
        return true
    }
    
    static func NotAllZeros(array: [UInt32]) -> Bool {
        
        let size = array.count
        
        for i in 0..<size {
            if array[i] != 0 {
                return true
            }
        }
        return false
    }
    
    static func NotAllZeros(array: [UInt]) -> Bool {
        
        let size = array.count
        
        for i in 0..<size {
            if array[i] != 0 {
                return true
            }
        }
        return false
    }
    
    static func IncreasesByZeroOrOne(array: [UInt32]) -> Bool {
        
        let size = array.count
        
        var current: UInt32 = 0
        for i in 0..<size {
            if array[i] > current + 1 {
                return false
            }
            current = array[i]
        }
        return true
    }
    
    static func AlwaysIncreases(array: [UInt32]) -> Bool {
        
        let size = array.count
        
        var current = 0
        for i in 1..<size {
            if array[i] < current {
                return false
            }
            current = Int(array[i])
        }
        return true
    }
}
