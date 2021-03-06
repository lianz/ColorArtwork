//
//  ConvenienceExtension.swift
//  ColorArtwork
//
//  Created by 邓翔 on 2017/2/28.
//
//

#if os(macOS)
    
    import Cocoa
    
    extension NSImage {
        
        public func getProminentColors(scale size: NSSize? = nil) -> (backgroundColor: NSColor, primaryColor: NSColor, secondaryColor: NSColor, detailColor: NSColor) {
            let (backgroundColor, primaryColor, secondaryColor, detailColor) = cgImage(forProposedRect: nil, context: nil, hints: nil)!.getProminentColors(scale: size)
            
            return (NSColor(cgColor: backgroundColor)!, NSColor(cgColor: primaryColor)!, NSColor(cgColor: secondaryColor)!, NSColor(cgColor: detailColor)!)
        }
        
    }

#elseif os(iOS) || os(tvOS) || os(watchOS)
    
    import UIKit
    
    extension UIImage {
        
        public func getProminentColors(scale size: CGSize? = nil) -> (backgroundColor: UIColor, primaryColor: UIColor, secondaryColor: UIColor, detailColor: UIColor) {
            let (backgroundColor, primaryColor, secondaryColor, detailColor) = cgImage!.getProminentColors(scale: size)
            
            return (UIColor(cgColor: backgroundColor), UIColor(cgColor: primaryColor), UIColor(cgColor: secondaryColor), UIColor(cgColor: detailColor))
        }
        
    }

#endif
