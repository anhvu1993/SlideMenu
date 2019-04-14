//
//  SlideMenuViewController.swift
//  MenuSlide
//
//  Created by Anh vũ on 3/27/19.
//  Copyright © 2019 anh vu. All rights reserved.
//

import UIKit

class SlideMenuViewController: UIViewController {

    
    @IBOutlet weak var tableView: UITableView!
    var iphone = [Iphone]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        iphone = [Iphone(photo: "1", name: "Iphone 5", unitprice: "20$"),
        Iphone(photo: "2", name: "Iphone 6", unitprice: "120$"),
        Iphone(photo: "3", name: "Iphone 7", unitprice: "190$"),
        Iphone(photo: "4", name: "Iphone 8", unitprice: "220$"),
        Iphone(photo: "5", name: "Iphone se", unitprice: "21$"),
        Iphone(photo: "6", name: "Iphone x", unitprice: "2000$")
        ]
        
        tableView.dataSource = self
        tableView.delegate   = self
        
    }
    


}
extension SlideMenuViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return iphone.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        let data = iphone[indexPath.row]
        cell.img.image = UIImage(named: data.photo!)
        cell.text_name.text = data.name ?? ""
        cell.price.text = data.unitprice ?? ""
        
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    
    
    
}
