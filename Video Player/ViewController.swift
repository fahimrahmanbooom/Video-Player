//
//  ViewController.swift
//  Video Player
//
//  Created by Fahim Rahman on 8/2/20.
//  Copyright © 2020 Fahim Rahman. All rights reserved.
//

import UIKit
import AVKit


class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        playInYoutube(youtubeId: "8VzDr7bgZwY")
    }
    
    func playInYoutube(youtubeId: String) {
        
//        Don't forget to add youtube scheme to LSApplicationQueriesSchemes in Info.plist (otherwise canOpenURL will always fail)
//        <key>LSApplicationQueriesSchemes</key>
//        <array>
//            <string>youtube</string>
//        </array>
        
        if let youtubeURL = URL(string: "youtube://\(youtubeId)"),
            UIApplication.shared.canOpenURL(youtubeURL) {
            // redirect to app
            UIApplication.shared.open(youtubeURL, options: [:], completionHandler: nil)
        } else if let youtubeURL = URL(string: "https://www.youtube.com/watch?v=\(youtubeId)") {
            // redirect through safari
            UIApplication.shared.open(youtubeURL, options: [:], completionHandler: nil)
        }
    }
}
