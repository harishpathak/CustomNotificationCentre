//
//  ThirdViewController.swift
//  CustomNotificationCentre
//
//  Created by Harish on 21/07/23.
//

import UIKit

class ThirdViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func postNotification(_ sender: Any) {
        MyNotificationCentre.shared.postMyNotification(name: "Test", data: textField.text)
    }

}
