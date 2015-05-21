//
//  NSDate+Extensions.swift
//  Photog
//
//  Created by Sam Bowen on 11/13/14.
//  Copyright (c) 2014 ConquerApps. All rights reserved.
//

import Foundation

extension NSDate
{
    func fuzzyTime() -> String
    {
        var secondsInOneDay = CGFloat(60 * 60 * 24)
        var secondsInOneHour = CGFloat(60 * 60)

        var seconds = CGFloat(NSDate().timeIntervalSinceDate(self))
        var days = seconds / secondsInOneDay
        var hours = (seconds % secondsInOneDay) / secondsInOneHour
        var minutes = (seconds % secondsInOneHour) / 60

        var string = "-"

        if (days > 1)
        {
            string = "\(Int(days))days"
        }
        else if (hours > 1)
        {
            string = "\(Int(hours))hrs"
        }
        else if (minutes > 1)
        {
            string = "\(Int(minutes))mins"
        }
        else if (seconds > 1)
        {
            string = "\(Int(seconds))secs"
        }

        return string
    }
}