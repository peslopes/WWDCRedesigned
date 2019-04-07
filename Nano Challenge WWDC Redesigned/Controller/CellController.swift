//
//  CellController.swift
//  Nano Challenge WWDC Redesigned
//
//  Created by Pedro Enrique Sobrosa Lopes on 05/04/19.
//  Copyright © 2019 WWDC Redesigned. All rights reserved.
//

import Foundation
import UIKit

class CellController: UIViewController {
    
    var eventData : EventData = EventData(sessions: [])
    
    @IBOutlet weak var tableView: UITableView!
    
    
    var keynotes: [Cell] = [
        Cell(image: "GeoffC", speaker: "Geoff C.", extraSpeaker: "+2", startingTime: "1900", endingTime: "1940", location: "Hall 2", title: "Automating App Store Connect", sessionNumber: 303, track: TrackType.devTrack, favorite: false),
        Cell(image: "FrankDoepke", speaker: "Frank Doepke", extraSpeaker: "", startingTime: "1900", endingTime: "1940", location: "Hall 1", title: "Vision with Core ML", sessionNumber: 717, track: TrackType.designTrack, favorite: false)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        eventData = EventData(sessions:
            [Session(startingHour: 1900, day: WeekDay.Monday, keynotes: 2),
             Session(startingHour: 2000 , day: WeekDay.Monday, keynotes: 0),
             Session(startingHour: 1400,day: WeekDay.Tuesday, keynotes: 0)])
        
    }
}

//MARK: - Source of data of the table view
extension CellController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return eventData.sessions.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return eventData.sessions[section].keynotes
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "EventCell") as? KeynoteCell else {
            return UITableViewCell()
        }
        let event = keynotes[indexPath.row]
        
        cell.speakerName.text = event.speaker
        cell.speakerImage.image = UIImage(named: event.image)
        cell.extraSpeakers.text = event.extraSpeaker
        cell.TimeAndPlace.text = "\(event.startingTime.prefix(2)):\(event.startingTime.suffix(2)) - \(event.endingTime.prefix(2)):\(event.endingTime.suffix(2)) - \(event.location)"
        cell.keynoteTitle.text = event.title
        cell.sessionNumber.text = "Session \(event.sessionNumber)"
        
        return cell
    }
}
