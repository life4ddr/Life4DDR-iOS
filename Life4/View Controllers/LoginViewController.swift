//
//  LoginViewController.swift
//  ViewController that takes a user's sign-in info in preparation
//  for using the app.
//  Life4
//
//  Created by Corey Perrigo on 8/19/19.
//  Copyright © 2019 PerrigoGames. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    static let userNameNotification = Notification.Name("userNameNotification")
    static let rivalCodeNotification = Notification.Name("rivalCodeNotification")
    static let twitterNameNotification = Notification.Name("twitterNameNotification")
    
    private var hasInfo: Bool = false
    
    // Hold on to these until they are saved else where
    private var userName: String = ""
    private var rivalCode: String = ""
    private var twitterName: String = ""
    private var loginInfoViewController: UIViewController!
    private var loginOptionsViewController: UIViewController!
    private var signupStoryboard: UIStoryboard!
    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var optionContainer: UIView!
    
    override func viewDidLoad() {
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing(_:))))
        NotificationCenter.default.addObserver(self, selector: #selector(onNotification(notification:)), name: LoginViewController.userNameNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(onNotification(notification:)), name: LoginViewController.rivalCodeNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(onNotification(notification:)), name: LoginViewController.twitterNameNotification, object: nil)
        
        self.signupStoryboard = UIStoryboard(name: "Signup", bundle: nil)
        self.loginInfoViewController = self.signupStoryboard.instantiateViewController(identifier: "LoginInfoViewController")
        self.loginOptionsViewController = self.signupStoryboard.instantiateViewController(identifier: "LoginOptionsViewController")
        
        super.viewDidLoad()
    }
    
    @objc func onNotification(notification:Notification){
        if(notification.userInfo == nil) {
            return
        }
        
        if(notification.name == LoginViewController.userNameNotification) {
            self.userName = notification.userInfo!["userName"] as! String
            if (self.userName != "") {
                signInButton.isEnabled = true
            } else {
                signInButton.isEnabled = false
            }
            
        } else if(notification.name == LoginViewController.rivalCodeNotification) {
            self.rivalCode = notification.userInfo!["rivalCode"] as! String
        } else if(notification.name == LoginViewController.twitterNameNotification) {
            self.twitterName = notification.userInfo!["twitterName"] as! String
        }
        
        // Remove when comfortable with functionality
        print("User: " + self.userName + " Rival: " + self.rivalCode + " Twitter: " + self.twitterName)
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    @IBAction func onSignInClicked(_ sender: Any) {
        if(signInButton.isEnabled) {
            NotificationCenter.default.post(name: LoginInfoViewController.showLoginOptions, object: nil)
        }
        if (!hasInfo) {
            startRankModePhase()
        } else {
            finish()
        }
    }
    
    private func startRankModePhase() {
        hasInfo = true
        signInButton.titleLabel?.text = "Sign In"
        
        //TODO transition to the radio buttons
    }
    
    private func finish() {
        
    }
}
