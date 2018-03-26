//
//  VideoViewController.swift
//  PartyRockApp
//
//  Created by Michael Jorgensen on 3/26/18.
//  Copyright © 2018 Jsorgensen. All rights reserved.
//

import UIKit

class VideoViewController: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var titleLabel: UILabel!

    private var mMediaItem: MediaHeader!
    
    var mediaItem: MediaHeader{
        get{ return mMediaItem }
        set{ mMediaItem = newValue }}
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text = mediaItem.videoTitle
        webView.loadHTMLString(mediaItem.videoURL, baseURL: nil)
    }
    
    @IBAction func onBackPressed(){
        dismiss(animated: true, completion: nil)
    }
}
