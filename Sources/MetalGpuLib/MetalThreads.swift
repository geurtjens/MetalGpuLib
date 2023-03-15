//
//  GpuThreads.swift
//  
//
//  Created by Michael Geurtjens on 16/3/2023.
//


import Foundation
import Metal
struct MetalThreads {
    
    static func Execute(pipe:MTLComputePipelineState,size:Int) -> (MTLSize,MTLSize) {
        let threadsPerGrid = MTLSize(width:size, height:1, depth:1)
        let maxThreadsPerThreadgroup = pipe.maxTotalThreadsPerThreadgroup
        let threadsPerThreadgroup = MTLSize(width: maxThreadsPerThreadgroup, height: 1, depth:1)
        return (threadsPerGrid,threadsPerThreadgroup)
    }
    
    /// This is really the compile step for our kernels
    static func Apply(kernel:MTLComputePipelineState,command:MTLComputeCommandEncoder?, size:Int) {
        let (threadsPerGrid,threadsPerThreadgroup) = Execute(pipe:kernel,size:size)
        command?.dispatchThreads(threadsPerGrid,
                    threadsPerThreadgroup:threadsPerThreadgroup)
    }
}
