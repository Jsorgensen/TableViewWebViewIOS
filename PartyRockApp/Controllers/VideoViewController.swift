//
//  VideoViewController.swift
//  PartyRockApp
//
//  Created by Michael Jorgensen on 3/26/18.
//  Copyright © 2018 Jsorgensen. All rights reserved.
//

import UIKit
import WebKit

class VideoViewController: UIViewController {
    
    @IBOutlet weak var wkWebView: WKWebView!
    @IBOutlet weak var titleLabel: UILabel!

    private var mMediaItem: MediaHeader!
    
    var mediaItem: MediaHeader{
        get{ return mMediaItem }
        set{ mMediaItem = newValue }}
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text = mediaItem.videoTitle
        wkWebView.loadHTMLString(mediaItem.videoURL, baseURL: nil)
    }
    
    @IBAction func onBackPressed(){
        dismiss(animated: true, completion: nil)
    }
}
