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
    @IBOutlet weak var videoTitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getVideo()
        
    }
    
    func getVideo() {
        
        var videoID: String
        
        for video in christmasVideos {
            
            let chosenWindow = christmasVideos[windowNumber!]
            
            
            videoID = chosenWindow["videoURL"]!
            videoTitle.text = chosenWindow["videoTitle"]!
            
            let url = URL(string: "https://player.vimeo.com/video/\(videoID)")
            webView.loadRequest(URLRequest(url: url!))

        }
    }
    
    
    
}

