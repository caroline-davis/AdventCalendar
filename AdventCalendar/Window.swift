//
//  Window.swift
//  AdventCalendar
//
//  Created by Caroline Davis on 17/11/2017.
//  Copyright © 2017 Caroline Davis. All rights reserved.
//

import UIKit

class Window: UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        let grey = UIColor(red:0.61, green:0.61, blue:0.61, alpha:1.0)
        
        self.titleLabel?.font = UIFont(name: "04b_19", size: 20)
        self.setTitleColor(grey, for: .normal)
        
    }



}
