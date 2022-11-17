//
//  ViewController.swift
//  FaceRecognition
//
//  Created by Büşra Özkan on 17.11.2022.
//

import UIKit
import LocalAuthentication

class ViewController: UIViewController {

    @IBOutlet weak var myLabel : UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    
    @IBAction func signinbutton (sender:AnyObject){
        
        let authContext = LAContext() // doğrulama işlemleri için kullandığımız obje
        var error : NSError?
        //biometric (faceid,touchid) ile belirleme
        if authContext.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error){
            
            authContext.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: "Is it you") { (success, error) in
                if success == true {
                    DispatchQueue.main.async {
                        self.performSegue(withIdentifier: "toSVC", sender: nil)
                    }
                }else{
                    DispatchQueue.main.async{
                        self.myLabel.text = "Error!"
                    }
                }
            }
        }
    }
}

