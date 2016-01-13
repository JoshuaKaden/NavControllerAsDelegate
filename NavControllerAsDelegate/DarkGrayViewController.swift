//
//  DarkGrayViewController.swift
//  NavControllerAsDelegate
//
//  Created by Kaden, Joshua on 1/13/16.
//  Copyright © 2016 NYC DoITT App Dev. All rights reserved.
//

import UIKit

class DarkGrayViewController: AppManagerViewController {

    @IBAction func didTapShowMessage(sender: AnyObject) {
        self.appManager?.triggerMessageFromBackground()
    }
    
}
