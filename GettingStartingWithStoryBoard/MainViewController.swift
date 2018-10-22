//
//  ViewController.swift
//  GettingStartingWithStoryBoard
//
//  Created by ZainAnjum on 19/10/2018.
//  Copyright © 2018 ZainAnjum. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    var appHeading: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        let text = UserDefaults.standard.string(forKey: "heading")
        if let text = text{
            titleLabel.text = text
        }
    }
    @IBAction func onClickButton(_ sender: UIButton) {
        let text = sender.titleLabel?.text
        let stoyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let VC = stoyboard.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        VC.titleForHeader = text
        VC.mainVC = self
        self.present(VC, animated: true, completion: nil)
    }
    func changeAppHeading() {
        if let text = appHeading{
            titleLabel.text = text
            UserDefaults.standard.set(text, forKey: "heading")
        }
    }
}

