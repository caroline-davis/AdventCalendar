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
        
        var songID: String
        
        for song in christmasSongs {
            songID = song["songURL"]!
            videoTitle.text = song["videoTitle"]!
            
            let url = URL(string: "https://player.vimeo.com/video/\(songID)")
            webView.loadRequest(URLRequest(url: url!))

        }
    }
    
    
    
}

