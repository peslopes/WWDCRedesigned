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

}

//extension DetailsViewController: UITableViewDataSource {
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return cells.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        switch(cells[indexPath.row].cellType) {
//            
//        case .aboutEventCell:
//
//        case .keynoteCell:
//            <#code#>
//        case .buttonCell:
//            <#code#>
//        case .imagemMapCell:
//            <#code#>
//        case .aboutSpeakerCell:
//            <#code#>
//        @unknown default:
//            <#code#>
//        }
//    }
//
//
//}
