//
//  UIViewController+Extensions.swift
//  Photog
//
//  Created by Sam Bowen on 10/29/14.
//  Copyright (c) 2014 ConquerApps. All rights reserved.
//

import Foundation

extension UIViewController
{
    func showAlert(message: String)
    {

        self.showAlert("Oops", message: message)



    }



    func showAlert(title: String, message: String )
    {

     //alert the user
        let alertController = UIAlertController(title: "Oops", message: message, preferredStyle: .Alert)

        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default,handler: nil))

        self.presentViewController(alertController, animated: true, completion: nil)



    }


}