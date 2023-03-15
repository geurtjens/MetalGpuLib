//
//  GpuKernels.swift
//  
//
//  Created by Michael Geurtjens on 16/3/2023.
//

import MetalKit
import Foundation
struct MetalKernels {
    
    static func Link(kernelName: String, device:MTLDevice?, library:MTLLibrary?) -> MTLComputePipelineState {
        let kernel = library?.makeFunction(
            name: kernelName)
        var pipe: MTLComputePipelineState!
        do {
            pipe = try device?.makeComputePipelineState(
                function: kernel!)
        } catch {
            print("\(kernelName) had error:\(error)")
        }
        return pipe
    }
}

