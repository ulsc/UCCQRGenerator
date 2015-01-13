//
//  UCCQRGenerator.swift
//  UCCQRGenerator
//
//  Created by Ulas Can Cengiz on 13/01/15.
//  Copyright (c) 2015 ProGeek Software. All rights reserved.
//

import UIKit

enum UCCQRCorrectionLevel
{
    // Correction Percentage
    case Percent7
    case Percent15
    case Percent25
    case Percent30
    
    var description : String
        {
            switch self
            {
            case .Percent7: return "L"
            case .Percent15: return "M"
            case .Percent25 : return "Q"
            case .Percent30: return "H"
            }
    }
}

class UCCQRGenerator
{
    class func generateQR(qrString : String = "", width : Int = 200, correctionLevel : UCCQRCorrectionLevel = UCCQRCorrectionLevel.Percent25) -> UIImage
    {
        let stringData : NSData = qrString.dataUsingEncoding(NSUTF8StringEncoding)!
        let qrFilter : CIFilter = CIFilter(name:"CIQRCodeGenerator")
        qrFilter.setValue(stringData, forKey: "inputMessage")
        qrFilter.setValue(correctionLevel.description, forKey: "inputCorrectionLevel")
        let scale : CGFloat = CGFloat(width) / qrFilter.outputImage.extent().width
        let cgImage : CGImageRef = CIContext(options: nil).createCGImage(qrFilter.outputImage, fromRect: qrFilter.outputImage.extent())
        UIGraphicsBeginImageContext(CGSizeMake(qrFilter.outputImage.extent().size.width * scale, qrFilter.outputImage.extent().size.width * scale))
        let context : CGContextRef = UIGraphicsGetCurrentContext()
        CGContextSetInterpolationQuality(context, kCGInterpolationNone)
        CGContextDrawImage(context, CGContextGetClipBoundingBox(context), cgImage)
        let qrImage : UIImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return qrImage;
    }
}