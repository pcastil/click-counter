//
//  ViewController.swift
//  Click Counter
//
//  Created by Pete Castillo on 6/1/15.
//  Copyright (c) 2015 Udacity. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var count = 0
    @IBOutlet var label : UILabel!    // optional - allows nil

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func incrementCount() {
        self.count++;
        label.text = "\(count)"
    }

}

