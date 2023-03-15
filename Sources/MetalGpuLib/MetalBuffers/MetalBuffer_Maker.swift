//
//  GpuBuffers.swift
//  
//
//  Created by Michael Geurtjens on 16/3/2023.
//

import MetalKit
import Foundation
struct MetalBuffer_Maker {
    
    static func buffer_UInt8(size: Int, device:MTLDevice?) -> MTLBuffer? {
        return device?.makeBuffer(
            length: MemoryLayout<UInt8>.size * size,
            options: .storageModeShared)
    }
    
    static func buffer_UInt8(array:[UInt8], device:MTLDevice?) -> MTLBuffer? {
        return device?.makeBuffer(
            bytes: array,
            length: MemoryLayout<UInt8>.size * array.count,
            options: .storageModeShared)
    }
    
    static func Int8(size: Int, device:MTLDevice?) -> MTLBuffer? {
        return device?.makeBuffer(
            length: MemoryLayout<Int8>.size * size,
            options: .storageModeShared)
    }
    
    static func buffer_UInt16(size: Int, device:MTLDevice?) -> MTLBuffer? {
        return device?.makeBuffer(
            length: MemoryLayout<UInt16>.size * size,
            options: .storageModeShared)
    }
    
    
    
    static func buffer_UInt32(size: Int, device:MTLDevice?) -> MTLBuffer? {
        return device?.makeBuffer(
            length: MemoryLayout<UInt32>.size * size,
            options: .storageModeShared)
    }
    
    static func buffer_UInt32(array:[UInt32], device:MTLDevice?) -> MTLBuffer? {
        return device?.makeBuffer(
            bytes: array,
            length: MemoryLayout<UInt32>.size * array.count,
            options: .storageModeShared)
    }
    
    static func buffer_UInt64(size: Int, device:MTLDevice?) -> MTLBuffer? {
        return device?.makeBuffer(
            length: MemoryLayout<UInt64>.size * size,
            options: .storageModeShared)
    }
    
    static func buffer_UInt64(array:[UInt64], device:MTLDevice?) -> MTLBuffer? {
        return device?.makeBuffer(
            bytes: array,
            length: MemoryLayout<UInt64>.size * array.count,
            options: .storageModeShared)
    }
    
    static func buffer_UInt(array:[UInt], device:MTLDevice?) -> MTLBuffer? {
        return device?.makeBuffer(
            bytes: array,
            length: MemoryLayout<UInt>.size * array.count,
            options: .storageModeShared)
    }
    
    
    
    
    
    static func MakeParam(
        interlockWidth: Int,
        interlockHeight: Int,
        minScore: Int,
        maxWidth: Int,
        maxHeight: Int,
        device: MTLDevice?) -> MTLBuffer?
    {
        let array: [UInt16] = [
            Swift.UInt16(interlockWidth),
            Swift.UInt16(interlockHeight),
            Swift.UInt16(minScore),
            Swift.UInt16(maxWidth),
            Swift.UInt16(maxHeight)
        ]
        
        let result = device?.makeBuffer(
                bytes: array,
                length: MemoryLayout<UInt16>.size * 5,
                options: .storageModeShared)
        return result
    }
    
    
    
    
    
    
    static func UInt(size: Int, device:MTLDevice?) -> MTLBuffer? {
        return device?.makeBuffer(
            length: MemoryLayout<UInt>.size * size,
            options: .storageModeShared)
    }
    
    static func ConstUInt32(value: UInt32, device:MTLDevice?) -> MTLBuffer? {
        return device?.makeBuffer(
            bytes:[value],
            length: MemoryLayout<UInt32>.size * 1,
            options: MTLResourceOptions.storageModeShared)
    }
    
    static func Erase(_ buffer:MTLBuffer?) {
        buffer?.setPurgeableState(.empty)
    }
    
    
}

