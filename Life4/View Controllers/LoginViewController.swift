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

    private var hasInfo: Bool = false
    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var optionContainer: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onSignInClicked(_ sender: Any) {
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
