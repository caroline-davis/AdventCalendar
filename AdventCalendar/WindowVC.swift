//
//  WindowVC.swift
//  AdventCalendar
//
//  Created by Caroline Davis on 17/11/2017.
//  Copyright © 2017 Caroline Davis. All rights reserved.
//

import Foundation
import UIKit

class WindowVC: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getVideo(songURL: "80849482")
        
    }
    
    func getVideo(songURL: String) {
        
        let url = URL(string: "https://player.vimeo.com/video/\(songURL)")
        webView.loadRequest(URLRequest(url: url!))
    }
    
    
}

