//
//  ViewController.swift
//  MenuSlide
//
//  Created by Anh vũ on 3/27/19.
//  Copyright © 2019 anh vu. All rights reserved.
//

import UIKit
protocol HomeDelegate {
    var result: Bool {get set}
}
class HomeViewController: UIViewController {
    var delegate: HomeDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func onSlideMenu(_ sender: Any) {
        
            delegate?.result = true
    }
    
    
   
}
