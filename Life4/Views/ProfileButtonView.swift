//
//  TrialListView.swift
//  Life4
//
//  Created by Corey Perrigo on 8/19/19.
//  Copyright © 2019 PerrigoGames. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable
class ProfileButtonView: UIView, NibLoadable {

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupFromNib()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupFromNib()
    }
}
