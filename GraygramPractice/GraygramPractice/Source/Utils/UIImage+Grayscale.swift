//
//  UIImage+Grayscale.swift
//  GraygramPractice
//
//  Created by unbTech on 2017. 6. 29..
//  Copyright © 2017년 unbTech. All rights reserved.
//

import UIKit

extension UIImage {
  func grayscaled() -> UIImage? {
    // CoreGraphics
    // UIImage -> CGImage -> CGContext -> CGImage -> UIImage
    guard let context = CGContext(
      data: nil,
      width: Int(self.size.width),
      height: Int(self.size.height),
      bitsPerComponent: 8,
      bytesPerRow: 0,
      space: CGColorSpaceCreateDeviceGray(),
      bitmapInfo: .allZeros
  )
  else { return nil }
  
    guard let inputCGImage = self.cgImage else { return nil }
    let imageRect = CGRect(origin: .zero, size: self.size)
    context.draw(inputCGImage, in: imageRect)
    
    guard let outputCGImage = context.makeImage() else { return nil }
    return UIImage(cgImage: outputCGImage)
  }
}
