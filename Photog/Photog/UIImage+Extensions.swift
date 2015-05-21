//
//  UIImage+Extensions.swift
//  Photog
//
//  Created by Sam Bowen on 11/20/14.
//  Copyright (c) 2014 ConquerApps. All rights reserved.
//

import Foundation

extension UIImage
    {
    func resize(targetWidth: CGFloat) -> UIImage
    {
        var originalWidth = self.size.width

        if originalWidth <= targetWidth
        {
            return self
        }

        var scaleFactor = targetWidth / originalWidth
        var targetHeight = self.size.height * scaleFactor

        var targetSize = CGSizeMake(targetWidth, targetHeight)

        UIGraphicsBeginImageContext(targetSize)

        self.drawInRect(CGRectMake(0, 0, targetWidth, targetHeight))

        var newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return newImage
    }
}