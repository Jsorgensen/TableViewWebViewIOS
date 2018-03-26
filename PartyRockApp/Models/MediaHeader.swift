//
//  MediaHeader.swift
//  PartyRockApp
//
//  Created by Michael Jorgensen on 3/26/18.
//  Copyright © 2018 Jsorgensen. All rights reserved.
//

import Foundation

class MediaHeader{
    private var mImageURL: String!
    private var mVideoURL: String!
    private var mVideoTitle: String!
    
    var imageURL: String{ return mImageURL }
    var videoURL: String{ return mVideoURL }
    var videoTitle: String{ return mVideoTitle }
    
    init(imageURL: String, videoURL: String, videoTitle: String) {
        mImageURL = imageURL
        mVideoURL = videoURL
        mVideoTitle = videoTitle
    }
}
