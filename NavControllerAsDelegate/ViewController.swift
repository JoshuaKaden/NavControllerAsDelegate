//
//  ViewController.swift
//  NavControllerAsDelegate
//
//  Created by Kaden, Joshua on 1/13/16.
//  Copyright © 2016 NYC DoITT App Dev. All rights reserved.
//

import UIKit

class ViewController: AppManagerViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let appManager = AppManager()
        appManager.delegate = self.navigationController
        self.appManager = appManager
    }

}
