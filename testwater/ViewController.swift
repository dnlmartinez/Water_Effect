//
//  ViewController.swift
//  testwater
//
//  Created by daniel martinez gonzalez on 11/5/17.
//  Copyright © 2017 daniel martinez gonzalez. All rights reserved.
//

import UIKit
import QuartzCore

class ViewController: UIViewController , CAAnimationDelegate
{

    @IBOutlet weak var imgBackground: UIImageView!
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func PressBT(_ sender: Any)
    {
            self.waterEffect()
    }

    func waterEffect()
    {
        let animation : CATransition = CATransition()
        animation.delegate = self
        animation.duration = 1.7
        animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseOut)
        animation.type = "rippleEffect"
        animation.fillMode = kCAFillModeRemoved
        animation.endProgress = 0.99
        animation.isRemovedOnCompletion = true
        self.imgBackground.layer.add(animation, forKey: nil)
    }
    
    
}

