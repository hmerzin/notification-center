//
//  ObservingViewController.swift
//  nsnotifications
//
//  Created by Harry Merzin on 12/3/16.
//  Copyright © 2016 Harry Merzin. All rights reserved.
//

import Foundation
import UIKit
class ObservingViewController: UIViewController {
    @IBOutlet weak var observeStatusLabel: UILabel!
    
    let nc = NotificationCenter.default
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nc.addObserver(forName: Notification.Name(rawValue: Constants().notificationName), object: nil, queue: nil, using: { notification in
            print("notificationObserved")
            self.observeStatusLabel.text = "notification observed"
        })
    }
}
