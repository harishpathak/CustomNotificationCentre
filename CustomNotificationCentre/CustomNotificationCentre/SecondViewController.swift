//
//  SecondViewController.swift
//  CustomNotificationCentre
//
//  Created by Harish on 21/07/23.
//

import UIKit

class SecondViewController: UIViewController, MyObserver {
    
    @IBOutlet weak var textLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        MyNotificationCentre.shared.addMyObserver(observer: self, name: "Test")

        // Do any additional setup after loading the view.
    }

    func receivedNotification(name: String, data: Any?) {
        let string = data as! String
        textLabel.text = string
    }
    
}
