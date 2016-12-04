//
//  ViewController.swift
//  nsnotifications
//
//  Created by Harry Merzin on 12/3/16.
//  Copyright © 2016 Harry Merzin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var button: UIButton!
    let name = Constants().notificationName
    let nc = NotificationCenter.default
    let new = NotificationCenter()
    
    var array = [String]() {
        didSet {
            let notificaiton = Notification(name: Notification.Name(rawValue: name))
            nc.post(notificaiton)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func clicked(_ sender: Any) {
        array.append("string")
    }
    
    

}

