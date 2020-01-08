//
//  ViewController.swift
//  swipegesturedemo
//
//  Created by MacStudent on 2020-01-07.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let swiperight = UISwipeGestureRecognizer(target: self, action: #selector(swiped))
        
        swiperight.direction = UISwipeGestureRecognizer.Direction.right
        view.addGestureRecognizer(swiperight)
        
        
        let swipeleft = UISwipeGestureRecognizer(target: self, action: #selector(swiped))
               
               swipeleft.direction = UISwipeGestureRecognizer.Direction.left
               view.addGestureRecognizer(swipeleft)
        // Do any additional setup after loading the view.
    }

    @objc func swiped(gesture: UISwipeGestureRecognizer){
        
      let swipegesture = gesture as UISwipeGestureRecognizer
            switch swipegesture.direction {
            case UISwipeGestureRecognizer.Direction.right:
                print("right swipe")
                case UISwipeGestureRecognizer.Direction.left:
                print("left swipe")
            default:
                break
            }
        }
        
    }


