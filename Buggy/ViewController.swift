//
//  ViewController.swift
//  Buggy
//
//  Created by Zer0 on 9/17/18.
//  Copyright © 2018 Zer0. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Button
    @IBAction func buttonTapped(_ sender: UIButton) {
        print("Method: \(#function), In file: \(#file), line: \(#line) ")
        badMethod()
    }
    
    func badMethod() {
        let array = NSMutableArray()
        
        for i in 0..<10 {
            array.insert(i, at: i)
        }
        
        // Go one step too far emptying the array (notice the range change):
        for _ in 0..<10 {
            array.removeObject(at: 0)
        }
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

