//
//  ViewController.swift
//  NavControllerAsDelegate
//
//  Created by Kaden, Joshua on 1/13/16.
//  Copyright © 2016 NYC DoITT App Dev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private let appManager: AppManager = AppManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.appManager.delegate = self.navigationController
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        guard let vc : AppManagerViewController = segue.destinationViewController as? AppManagerViewController else { return }
        vc.appManager = self.appManager
    }

}
