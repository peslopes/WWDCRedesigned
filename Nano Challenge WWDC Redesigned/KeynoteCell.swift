//
//  KeynoteCell.swift
//  Nano Challenge WWDC Redesigned
//
//  Created by Rafael Ferreira on 07/04/19.
//  Copyright © 2019 WWDC Redesigned. All rights reserved.
//

import UIKit

class KeynoteCell: UITableViewCell {
    
    @IBOutlet weak var speakerImage: UIImageView!
    @IBOutlet weak var speakerName: UILabel!
    @IBOutlet weak var extraSpeakers: UILabel!
    @IBOutlet weak var TimeAndPlace: UILabel!
    @IBOutlet weak var keynoteTitle: UILabel!
    @IBOutlet weak var sessionNumber: UILabel!
    @IBOutlet weak var trackColor: UIView!
    @IBOutlet weak var starButtonOutlet: UIButton!
    
    @IBAction func starButtonClicked(_ sender: Any) {
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
