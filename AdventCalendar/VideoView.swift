//
//  VideoView.swift
//  AdventCalendar
//
//  Created by Caroline Davis on 14/12/17.
//  Copyright © 2017 Caroline Davis. All rights reserved.
//

import UIKit

class VideoView: UIWebView {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        // shadowing
        layer.shadowColor = UIColor.darkGray.cgColor
        layer.shadowOpacity = 0.8
        layer.shadowRadius = 5.0
        layer.shadowOffset = CGSize(width: 1.0, height: 1.0)
        layer.cornerRadius = 2.0
    }

}
