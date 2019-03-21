//
//  ViewController.swift
//  ChtarLoader
//
//  Created by Ragaie on 3/19/19.
//  Copyright © 2019 Ragaie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
      
    }

    @IBAction func showLoader(_ sender: Any) {

        CHLoader.shared.startAnimate()
        
    }
    
  
    
    @IBAction func HideLoader(_ sender: Any) {
        CHLoader.shared.stopAnimate()
    }
    
    
}

