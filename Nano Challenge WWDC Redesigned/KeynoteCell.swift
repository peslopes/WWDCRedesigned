//
//  KeynoteCell.swift
//  Nano Challenge WWDC Redesigned
//
//  Created by Rafael Ferreira on 07/04/19.
//  Copyright © 2019 WWDC Redesigned. All rights reserved.
//

import UIKit

class KeynoteCell: UITableViewCell {
    
    weak var delegate: FavoriteDelegate?
    var index: Int?
    @IBOutlet weak var speakerImage: UIImageView!
    @IBOutlet weak var speakerName: UILabel!
    @IBOutlet weak var extraSpeakers: UILabel!
    @IBOutlet weak var TimeAndPlace: UILabel!
    @IBOutlet weak var keynoteTitle: UILabel!
    @IBOutlet weak var sessionNumber: UILabel!
    @IBOutlet weak var trackColor: UIView!
    
    @IBAction func favoritePressed(_ sender: UIButton) {
        let favoriteStatus = delegate?.buttonDidPress(sender, index: index!)
        if favoriteStatus! {
            sender.setBackgroundImage(UIImage(named: "Star Closed"), for: .normal)
        }
        else {
            sender.setBackgroundImage(UIImage(named: "Star Open"), for: .normal)
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        speakerImage.layer.cornerRadius = 22.0
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
