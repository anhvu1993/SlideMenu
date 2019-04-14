//
//  ViewController.swift
//  MenuSlide
//
//  Created by Anh vũ on 3/26/19.
//  Copyright © 2019 anh vu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var result = true {
        didSet {
            UIView.animate(withDuration: 0.5) {
                self.leading.constant = self.result ? 0 : -self.uiView.frame.size.width
                self.shadow(uiView: self.uiView,color: .black, shadow: 10, Opacity: 1)
                self.buttonOutlet.alpha = self.result ? 1 : 0
            self.view.layoutIfNeeded()
            }
        }
    }
    
   
    @IBOutlet weak var buttonOutlet: UIButton!
    @IBOutlet weak var leading: NSLayoutConstraint!
    @IBOutlet weak var uiView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func viewDidAppear(_ animated: Bool) {
        result = false
    }
    @IBAction func offMenu(_ sender: Any) {
        result = false
    }
    
    @IBAction func slideMenu(_ sender: Any) {
        result = !result
//        if !result {
//            leading.constant = -uiView.frame.size.width
//            result = true
//        } else {
//            leading.constant = 0
//            result = false
//
//
//        }
//        UIView.animate(withDuration: 0.5, delay: 0.0, options: .curveEaseIn, animations: {
//            self.view.layoutIfNeeded()
//        }) { (animationComplete) in
//
//        }
//
    }
    func shadow(uiView: UIView, color: UIColor,shadow: CGFloat, Opacity : Float) {
        uiView.layer.shadowColor = color.cgColor
        uiView.layer.shadowOpacity = Opacity
        uiView.layer.shadowOffset = CGSize.zero
        uiView.layer.shadowRadius = shadow

    }

    
}

