//
//  AboutSpeakerCell.swift
//  Nano Challenge WWDC Redesigned
//
//  Created by Pedro Enrique Sobrosa Lopes on 08/04/19.
//  Copyright © 2019 WWDC Redesigned. All rights reserved.
//

import UIKit

class AboutSpeakerCell: UITableViewCell {

    @IBOutlet weak var speakerCompanyLabel: UILabel!
    @IBOutlet weak var speakerFunctionLabel: UILabel!
    @IBOutlet weak var speakerNameLabel: UILabel!
    @IBOutlet weak var speakerImage: UIImageView!
    @IBOutlet weak var speakerDescription: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
