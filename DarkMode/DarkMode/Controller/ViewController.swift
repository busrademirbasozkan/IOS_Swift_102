//
//  ViewController.swift
//  DarkMode
//
//  Created by Büşra Özkan on 17.11.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var changeButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //bu viewcontrollerda hep light mod olsun istersek
        overrideUserInterfaceStyle = .light
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let userInterfaceStyle = traitCollection.userInterfaceStyle
        
            if userInterfaceStyle == .dark {
                changeButton.tintColor = UIColor.red
            }else{
                changeButton.tintColor = UIColor.green
            }
    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        let userInterfaceStyle = traitCollection.userInterfaceStyle
        
            if userInterfaceStyle == .dark {
                changeButton.tintColor = UIColor.red
            }else{
                changeButton.tintColor = UIColor.green
            }
    }
    
}

