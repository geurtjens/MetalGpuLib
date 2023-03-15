//
//  File.swift
//  
//
//  Created by Michael Geurtjens on 16/3/2023.
//
import MetalKit
import Foundation
struct MetalBuffer_ToArray {
    
    public static func array_UInt8(buffer:MTLBuffer?, size: Int) -> [UInt8] {
        return buffer!.contents().toArrayUInt8(capacity:size)
    }
    
    public static func array_Int8(buffer:MTLBuffer?, size: Int) -> [Int8] {
        return buffer!.contents().toArrayInt8(capacity:size)
    }
    
    public static func array_UInt16(buffer:MTLBuffer?, size: Int) -> [UInt16] {
        return buffer!.contents().toArrayUInt16(capacity:size)
    }
    
    public static func array_UInt32(buffer:MTLBuffer?, size: Int) -> [UInt32] {
        return buffer!.contents().toArrayUInt32(capacity:size)
    }
    
    public static func array_UInt64(buffer:MTLBuffer?, size: Int) -> [UInt64] {
        return buffer!.contents().toArrayUInt64(capacity:size)
    }
    
    public static func array_UInt(buffer:MTLBuffer?, size: Int) -> [UInt] {
        return buffer!.contents().toArrayUInt(capacity:size)
    }
    
    
    ///
    /// - Parameters:
    ///   - buffer: Buffer containing text all separated by /0
    ///   - size: The total size of the text buffer
    ///   - offset: Where in the text buffer you are getting your text from, the offset
    /// - Returns: String of text representing the text for a single game
    public static func string_Int8(
        buffer: MTLBuffer?,
        size: Int,
        offset: Int) -> String
    {
        
        var pointer = buffer?.contents().bindMemory(
            to: Swift.Int8.self,
            capacity: MemoryLayout<Int8>.size * size)
            
        pointer = pointer?.advanced(by:offset)
        
        let result = String(cString:pointer!)
        
        return result
        
    }
    
    public static func value_UInt32(
        buffer: MTLBuffer?,
        size: Int,
        offset: Int) -> UInt32
    {
        var pointer = buffer?.contents().bindMemory(
            to: Swift.UInt32.self,
            capacity: MemoryLayout<UInt32>.size * size)
            
        pointer = pointer?.advanced(by:offset)
        let result: UInt32 = pointer!.pointee

        return result
    }
}
