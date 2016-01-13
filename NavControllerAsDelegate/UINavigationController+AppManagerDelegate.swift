//
//  UINavigationController+AppManagerDelegate.swift
//  NavControllerAsDelegate
//
//  Created by Kaden, Joshua on 1/13/16.
//  Copyright © 2016 NYC DoITT App Dev. All rights reserved.
//

import UIKit

extension UINavigationController : AppManagerDelegate {
    
    func showMessage(message: String) {
        let alert = UIAlertController(title: "Alert", message: message, preferredStyle: .Alert)
        alert.addAction(UIAlertAction(title: "OK", style: .Default, handler: { (action) -> Void in
            alert.dismissViewControllerAnimated(true, completion: {})
        }))
        self.visibleViewController?.presentViewController(alert, animated: true, completion: {})
    }
    
}
