//
//  PartyTableViewCell.swift
//  PartyRockApp
//
//  Created by Michael Jorgensen on 3/26/18.
//  Copyright © 2018 Jsorgensen. All rights reserved.
//

import UIKit

class PartyTableViewCell: UITableViewCell {

    @IBOutlet weak var videoPreviewImage: UIImageView!
    @IBOutlet weak var videoTitleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func updateUI(header: MediaHeader){
        videoTitleLabel.text = header.videoTitle
        
        let url = URL(string: header.imageURL)!
        
        DispatchQueue.global().async {
            do{
                let data = try Data(contentsOf: url)
                DispatchQueue.global().sync {
                    self.videoPreviewImage.image = UIImage(data: data)
                }
            }catch {
            
            }
        }
    }
}
