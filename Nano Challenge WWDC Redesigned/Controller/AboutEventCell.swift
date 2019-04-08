//
//  AboutEventCell.swift
//  Nano Challenge WWDC Redesigned
//
//  Created by Pedro Enrique Sobrosa Lopes on 08/04/19.
//  Copyright © 2019 WWDC Redesigned. All rights reserved.
//

import UIKit

class AboutEventCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var eventDescriptionLabel: UILabel!
    @IBOutlet weak var speakersNamesLabel: UILabel!
    @IBOutlet weak var sessionNumberLabel: UILabel!
    @IBOutlet weak var trackTypeLabel: UILabel!
    @IBOutlet weak var trackTypeColor: UIView!
    @IBOutlet weak var dateAndLocalLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
