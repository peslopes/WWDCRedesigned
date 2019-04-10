//
//  DetailsViewController.swift
//  Nano Challenge WWDC Redesigned
//
//  Created by Pedro Enrique Sobrosa Lopes on 08/04/19.
//  Copyright © 2019 WWDC Redesigned. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var cells: [Cell] = []
    var keynote: Cell?
    override func viewDidLoad() {
        super.viewDidLoad()
        if keynote != nil {
            cells = [Cell(image: keynote!.image, speaker: keynote!.speaker, extraSpeaker:                   keynote!.extraSpeaker, startingTime: keynote!.startingTime, endingTime:           keynote!.endingTime, location: keynote!.location, title:                          keynote!.title, sessionNumber: keynote!.sessionNumber, track:                     keynote!.track, favorite: keynote!.favorite, eventDescription:                    keynote!.eventDescription, imageMap: keynote!.imageMap,                           speakerFunction: keynote!.speakerFunction, speakerCompany:                        keynote!.speakerCompany, speakerDescription:                                      keynote!.speakerDescription, cellType: .aboutEventCell),
                     Cell(image: keynote!.image, speaker: keynote!.speaker, extraSpeaker: keynote!.extraSpeaker, startingTime: keynote!.startingTime, endingTime: keynote!.endingTime, location: keynote!.location, title: keynote!.title, sessionNumber: keynote!.sessionNumber, track: keynote!.track, favorite: keynote!.favorite, eventDescription: keynote!.eventDescription, imageMap: keynote!.imageMap, speakerFunction: keynote!.speakerFunction, speakerCompany: keynote!.speakerCompany, speakerDescription: keynote!.speakerDescription, cellType: .buttonCell),
                     Cell(image: keynote!.image, speaker: keynote!.speaker, extraSpeaker: keynote!.extraSpeaker, startingTime: keynote!.startingTime, endingTime: keynote!.endingTime, location: keynote!.location, title: keynote!.title, sessionNumber: keynote!.sessionNumber, track: keynote!.track, favorite: keynote!.favorite, eventDescription: keynote!.eventDescription, imageMap: keynote!.imageMap, speakerFunction: keynote!.speakerFunction, speakerCompany: keynote!.speakerCompany, speakerDescription: keynote!.speakerDescription, cellType: .buttonCell),
                     Cell(image: keynote!.image, speaker: keynote!.speaker, extraSpeaker: keynote!.extraSpeaker, startingTime: keynote!.startingTime, endingTime: keynote!.endingTime, location: keynote!.location, title: keynote!.title, sessionNumber: keynote!.sessionNumber, track: keynote!.track, favorite: keynote!.favorite, eventDescription: keynote!.eventDescription, imageMap: keynote!.imageMap, speakerFunction: keynote!.speakerFunction, speakerCompany: keynote!.speakerCompany, speakerDescription: keynote!.speakerDescription, cellType: .imagemMapCell),
                     Cell(image: keynote!.image, speaker: keynote!.speaker, extraSpeaker: keynote!.extraSpeaker, startingTime: keynote!.startingTime, endingTime: keynote!.endingTime, location: keynote!.location, title: keynote!.title, sessionNumber: keynote!.sessionNumber, track: keynote!.track, favorite: keynote!.favorite, eventDescription: keynote!.eventDescription, imageMap: keynote!.imageMap, speakerFunction: keynote!.speakerFunction, speakerCompany: keynote!.speakerCompany, speakerDescription: keynote!.speakerDescription, cellType: .keynoteCell),
                     Cell(image: keynote!.image, speaker: keynote!.speaker, extraSpeaker: keynote!.extraSpeaker, startingTime: keynote!.startingTime, endingTime: keynote!.endingTime, location: keynote!.location, title: keynote!.title, sessionNumber: keynote!.sessionNumber, track: keynote!.track, favorite: keynote!.favorite, eventDescription: keynote!.eventDescription, imageMap: keynote!.imageMap, speakerFunction: keynote!.speakerFunction, speakerCompany: keynote!.speakerCompany, speakerDescription: keynote!.speakerDescription, cellType: .aboutSpeakerCell)
                ]
            
            tableView.dataSource = self
        }
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    func trackColor(trackType: TrackType) -> UIColor{
        switch trackType {
        case .devTrack:
            return UIColor(red: 0.960, green: 0.529, blue: 0.098, alpha: 1)
        case .designTrack:
            return UIColor(red: 0.635, green: 0.317, blue: 0.956, alpha: 1)
        case .featuredTrack:
            return UIColor(red: 0.870, green: 0.729, blue: 0.411, alpha: 1)
        case .frameworksTrack:
            return UIColor(red: 0.172, green: 0.921, blue: 0.2, alpha: 1)
        case .graphicsGamesTrack:
            return UIColor(red: 0.078, green: 0.870, blue: 0.717, alpha: 1)
        }
    }

}

extension DetailsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cells.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellModel = cells[indexPath.row]
        switch(cellModel.cellType) {
            
        case .aboutEventCell:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "AboutEventCell") as? AboutEventCell else {
                return UITableViewCell()
            }
            cell.titleLabel.text = cellModel.title
            cell.eventDescriptionLabel.text = cellModel.eventDescription
            cell.speakersNamesLabel.text = cellModel.speaker
            cell.trackTypeLabel.text = cellModel.track.description
            cell.trackTypeLabel.textColor = trackColor(trackType: cellModel.track)
            cell.sessionNumberLabel.text = "Session \(cellModel.sessionNumber)"
            cell.trackTypeColor.backgroundColor = trackColor(trackType: cellModel.track)
            cell.dateAndLocalLabel.text = "\(cellModel.startingTime)"
            
            return cell
            
            
        case .keynoteCell:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "EventCell") as? KeynoteCell else {
                return UITableViewCell()
            }
            
            cell.speakerName.text = cellModel.speaker
            cell.speakerImage.image = UIImage(named: cellModel.image)
            cell.keynoteTitle.text = cellModel.title
            cell.trackColor.backgroundColor = trackColor(trackType: cellModel.track)
            
            return cell
            
        case .buttonCell:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "ButtonCell") as? ButtonCell else {
                return UITableViewCell()
            }
            if indexPath.row == 1{
                cell.optionButton.setTitle(buttonType.watched.description, for: .normal)
            }
            else {
                cell.optionButton.setTitle(buttonType.calendar.description, for: .normal)
            }
            
            return cell
        case .imagemMapCell:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "MapCell") as? ImageMapCell else {
                return UITableViewCell()
            }
            cell.imageMap.image = UIImage(named: cellModel.imageMap)
            
            return cell
            
        case .aboutSpeakerCell:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "AboutSpeakerCell") as? AboutSpeakerCell else {
                return UITableViewCell()
            }
            cell.speakerNameLabel.text = cellModel.speaker
            cell.speakerImage.image = UIImage(named: cellModel.image)
            cell.speakerCompanyLabel.text = cellModel.speakerCompany
            cell.speakerFunctionLabel.text = cellModel.speakerFunction
            
            return cell
        }
        
        return UITableViewCell()
    }


}
