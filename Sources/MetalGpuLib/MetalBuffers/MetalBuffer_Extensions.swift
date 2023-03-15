//
//  MTLBufferToArrayExtension.swift
//  
//
//  Created by Michael Geurtjens on 16/3/2023.
//

import Foundation
extension UnsafeMutableRawPointer {
    
    func toArray<T>(to type: T.Type, capacity count: Int) -> [T]{
        let pointer = bindMemory(to: type, capacity: count)
        return Array(UnsafeBufferPointer(start: pointer, count: count))
    }

    func toArrayUInt32(capacity count: Int) -> [UInt32]{
        let pointer = bindMemory(to: UInt32.self, capacity: count)
        return Array(UnsafeBufferPointer(start: pointer, count: count))
    }
    
    func toArrayUInt16(capacity count: Int) -> [UInt16]{
        let pointer = bindMemory(to: UInt16.self, capacity: count)
        return Array(UnsafeBufferPointer(start: pointer, count: count))
    }
    
    func toArrayUInt8(capacity count: Int) -> [UInt8]{
        let pointer = bindMemory(to: UInt8.self, capacity: count)
        return Array(UnsafeBufferPointer(start: pointer, count: count))
    }
    
    func toArrayInt8(capacity count: Int) -> [Int8]{
        let pointer = bindMemory(to: Int8.self, capacity: count)
        return Array(UnsafeBufferPointer(start: pointer, count: count))
    }

    func toArrayUInt(capacity count: Int) -> [UInt]{
        let pointer = bindMemory(to: UInt.self, capacity: count)
        return Array(UnsafeBufferPointer(start: pointer, count: count))
    }
    
    func toArrayUInt64(capacity count: Int) -> [UInt64]{
        let pointer = bindMemory(to: UInt64.self, capacity: count)
        return Array(UnsafeBufferPointer(start: pointer, count: count))
    }
}
