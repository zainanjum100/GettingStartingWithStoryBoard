//
//  SecondViewController.swift
//  GettingStartingWithStoryBoard
//
//  Created by ZainAnjum on 23/10/2018.
//  Copyright © 2018 ZainAnjum. All rights reserved.
//

import UIKit
class SecondViewController: UIViewController{
    @IBOutlet weak var closeButton: UIButton!
    @IBOutlet weak var titleHeader: UILabel!
    var titleForHeader: String?
    var mainVC: MainViewController?
    
    override func viewDidLoad() {
        closeButton.layer.cornerRadius = 5
        if let text = titleForHeader{
        titleHeader.text = text
        }
    }
    
    
    @IBOutlet weak var textField: UITextField!
    @IBAction func onClickDismiss(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func onClickLogin(_ sender: Any) {
        self.dismiss(animated: true) {
            self.mainVC?.appHeading = self.textField.text
            self.mainVC?.changeAppHeading()
        }
        
    }
    
    
}
