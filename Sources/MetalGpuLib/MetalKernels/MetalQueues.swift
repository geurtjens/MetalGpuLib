//
//  GpuQueues.swift
//  
//
//  Created by Michael Geurtjens on 16/3/2023.
//

import MetalKit
import Foundation
struct MetalQueues {
    
    static func startCommandBuffer(commandQueue: MTLCommandQueue?) -> MTLCommandBuffer?
    {
        
        let desc = MTLCommandBufferDescriptor()
        desc.errorOptions = .encoderExecutionStatus
        
        let commandBuffer = commandQueue?.makeCommandBuffer(descriptor: desc)
        
        return commandBuffer
    }
    
    static func CreateDevice() -> MTLDevice? {
        return MTLCreateSystemDefaultDevice()
    }
    
    static func CreateQueue(device: MTLDevice?) -> MTLCommandQueue? {
        return device?.makeCommandQueue()
    }
    
    static func stopCommandBuffer(commandBuffer:MTLCommandBuffer?) {
        commandBuffer?.commit()
        commandBuffer?.waitUntilCompleted()
        
        // Error handling incase there are errors in any Commands
        if let error = commandBuffer?.error as NSError? {
            if let encoderInfos = error.userInfo[MTLCommandBufferEncoderInfoErrorKey]
                as? [MTLCommandBufferEncoderInfo] {
                for info in encoderInfos {
                    print(info.label + info.debugSignposts.joined())
                    if info.errorState == .faulted {
                        print(info.label + " faulted!")
                    }
                }
            }
        }
    }
}
