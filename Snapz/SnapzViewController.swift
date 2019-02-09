//
//  SnapzViewController.swift
//  Snapz
//
//  Created by Nathan Glynn on 2/8/19.
//  Copyright © 2019 Nathan Glynn. All rights reserved.
//

import UIKit

class SnapzViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func logoutTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    

}
