//
//  ViewController.swift
//  Setting Up Animation
//
//  Created by Brad Gray on 7/16/15.
//  Copyright (c) 2015 Brad Gray. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var isAnimating = true
    var counter = 1
    
    var timer = NSTimer()
    
    func doAnimation() {
        if counter == 2 {
            counter = 1
            
        } else {
            counter++
        }
        TigerImage.image = UIImage(named: "animate\(counter).png")
        
    }




    @IBOutlet weak var TigerImage: UIImageView!
   
    @IBAction func Animate(sender: UIButton) {
        
        if  isAnimating == true {
            timer.invalidate()
            isAnimating = false
        } else {
            timer = NSTimer.scheduledTimerWithTimeInterval(0.5, target: self, selector: "doAnimation", userInfo: nil, repeats: true)
            isAnimating = true
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timer = NSTimer.scheduledTimerWithTimeInterval(0.5, target: self, selector: "doAnimation", userInfo: nil, repeats: true)

          }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//
//  }
//        override func viewDidLayoutSubviews() {
//            TigerImage.frame = CGRectMake(100, 200, 0, 0)
//        }
//        override func viewDidAppear(animated: Bool) {
//            UIView.animateWithDuration(2, animations: { () -> Void in
//                self.TigerImage.frame = CGRectMake(100, 200, 100, 200)
//            })
//            
//        }
//        
        

}

