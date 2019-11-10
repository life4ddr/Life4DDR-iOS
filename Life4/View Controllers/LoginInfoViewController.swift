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

class LoginInfoViewController: UIViewController {

    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var rivalCodeField: UITextField!
    @IBOutlet weak var twitterNameField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
}
