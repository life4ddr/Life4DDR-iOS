//
//  LoginInfoViewController.swift
//  ViewController that handles the user's textual input for
//  logging in. This includes the user's name, rival code, and
//  Twitter name.
//  Life4
//
//  Created by Corey Perrigo on 9/20/19.
//  Copyright © 2019 PerrigoGames. All rights reserved.
//

import UIKit

class LoginInfoViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var rivalCodeField: UITextField!
    @IBOutlet weak var twitterNameField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameField.delegate = self
        rivalCodeField.delegate = self
        twitterNameField.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if (textField == nameField) {
            rivalCodeField.becomeFirstResponder();
            return true
        }
        
        self.view.endEditing(true)
        return false
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if (textField == nameField) {
            NotificationCenter.default.post(name: LoginViewController.userNameNotification, object: nil, userInfo: ["userName": nameField.text!])
        } else if (textField == rivalCodeField) {
            NotificationCenter.default.post(name: LoginViewController.rivalCodeNotification, object: nil, userInfo: ["rivalCode": rivalCodeField.text!])
        } else if (textField == twitterNameField){
            NotificationCenter.default.post(name: LoginViewController.twitterNameNotification, object: nil, userInfo: ["twitterName": twitterNameField.text!])
        }
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
}
