//
//  ViewController1.swift
//  MenuSlide
//
//  Created by Anh vũ on 3/27/19.
//  Copyright © 2019 anh vu. All rights reserved.
//

import UIKit

class ConstantViewController: UIViewController, HomeDelegate {
    @IBOutlet weak var buttonOutlet: UIButton!
    @IBOutlet weak var uiView: UIView!
    @IBOutlet weak var leading: NSLayoutConstraint!
    var result = true {
        didSet {
            UIView.animate(withDuration: 0.35) {
                self.leading.constant   = self.result ? 0 : -self.uiView.frame.size.width-20
                self.buttonOutlet.alpha = self.result ? 1 : 0
                self.shadow(name: self.uiView, color: .black, shadow: 7, Opacity: 1)
                self.view.layoutIfNeeded()
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    override func viewDidAppear(_ animated: Bool) {
        result = false
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destination = segue.destination as? UINavigationController else {return}
        let mainVC = destination.topViewController as? HomeViewController
        mainVC?.delegate = self
        
    }
    @IBAction func offSlideMenu(_ sender: Any) {
        result = !result
    }
    
    func shadow(name: UIView, color: UIColor,shadow: CGFloat, Opacity : Float) {
        name.layer.shadowColor = color.cgColor
        name.layer.shadowOpacity = Opacity
        name.layer.shadowOffset = CGSize.zero
        name.layer.shadowRadius = shadow
        
    }
    
    
}
