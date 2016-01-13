//
//  AppManager.swift
//  NavControllerAsDelegate
//
//  Created by Kaden, Joshua on 1/13/16.
//  Copyright © 2016 NYC DoITT App Dev. All rights reserved.
//

import Foundation

/** Waits a number of seconds, and then performs a closure on the main thread.
 Hats off to Matt Neuburg: http://stackoverflow.com/questions/24034544/dispatch-after-gcd-in-swift/24318861#24318861 */
func delay(delay:Double, closure:()->()) {
    if delay == 0 {
        closure()
        return
    }
    
    dispatch_after(
        dispatch_time(
            DISPATCH_TIME_NOW,
            Int64(delay * Double(NSEC_PER_SEC))
        ),
        dispatch_get_main_queue(), closure)
}

protocol AppManagerDelegate {
    func showMessage(message: String)
}

class AppManager {
    
    var delegate : AppManagerDelegate?
    
    func triggerMessageFromBackground() {
        let qualityOfServiceClass = QOS_CLASS_BACKGROUND
        let backgroundQueue = dispatch_get_global_queue(qualityOfServiceClass, 0)
        dispatch_async(backgroundQueue, {
            print("This is run on the background queue.")
            
            delay(3) {
                self.delegate?.showMessage("This was invoked from the background queue.")
            }
        })
    }
}
