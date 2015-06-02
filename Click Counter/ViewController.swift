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
    var label : UILabel!    // optional - allows nil
    var label2 : UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        // LABEL
        var label = UILabel()
        label.frame = CGRectMake(125, 150, 60, 60)
        label.text = "0"
        self.label = label

        self.view.addSubview(label)

        label = UILabel()
        label.frame = CGRectMake(175, 150, 60, 60)
        label.text = "0"
        self.label2 = label

        self.view.addSubview(label2)

        // BUTTON
        var button = UIButton()
        button.frame = CGRectMake(150, 250, 20, 60)
        button.setTitle("+", forState: .Normal)
        button.setTitleColor(UIColor.blueColor(), forState: .Normal)

        self.view.addSubview(button)
        button.addTarget(self, action: "incrementCount", forControlEvents: UIControlEvents.TouchUpInside)


        var button2 = UIButton()
        button2.frame = CGRectMake(135, 250, 20, 60)
        button2.setTitle("-", forState: .Normal)
        button2.setTitleColor(UIColor.blueColor(), forState: .Normal)

        self.view.addSubview(button2)
        button2.addTarget(self, action: "decrementCount", forControlEvents: UIControlEvents.TouchUpInside)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func decrementCount() {
        println("decrementCount()")
        label2.text = "\(count)"
        count--;
        label.text = "\(count)"

        self.view.backgroundColor = UIColor.lightGrayColor()
    }

    func incrementCount() {
        println("incrementCount()")
        label2.text = "\(count)"
        count++;
        label.text = "\(count)"
        self.view.backgroundColor = UIColor.darkGrayColor()
    }
}

