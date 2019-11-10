//
//  LoginOptionsViewController.swift
//  ViewController that handles selecting the mode of choosing a rank.
//  This could mean either playing a Placement Set, choosing a rank from
//  the list of available ranks, or starting with no rank at all.
//  Life4
//
//  Created by Corey Perrigo on 9/20/19.
//  Copyright © 2019 PerrigoGames. All rights reserved.
//

import UIKit
import DLRadioButton

class LoginOptionsViewController: UIViewController {

    @IBOutlet weak var placementSetOption: DLRadioButton!
    @IBOutlet weak var rankListOption: DLRadioButton!
    @IBOutlet weak var noRankOption: DLRadioButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
}
