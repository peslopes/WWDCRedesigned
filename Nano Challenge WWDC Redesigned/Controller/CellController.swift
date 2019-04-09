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
        Cell(image: "GeoffC", speaker: "Geoff C.", extraSpeaker: 2, startingTime: "1900", endingTime: "1940", location: "Hall 2", title: "Automating App Store Connect", sessionNumber: 303, track: TrackType.devTrack, favorite: false, eventDescription: "jbfejbfi ububdiudhfiue uehdoeuhfouehfou houhfouhou ehfoueh ouehfoueh ouehfoue hfouehou eh fouehfouehfoehfouhfouhefouehfouheouhou hou hefouhe ouheou h ouheouh ouhouheo hoeuh o hou houfheoufheoufheou ho uheoufheoufheoufhoeufhoeuhfohoeh dgsidygidy dhiushdiushdiushdiu hushdiushdiushdisudhsiudhiusd usdhsiudhisudhisud sidhsiudhsiuhdiushdiush hdiushdiushdiushdiu usdhsiudh", imageMap: "ExampleMap", speakerFunction: "Director of something", speakerCompany: "Apple Inc.", speakerDescription: "blablabla", cellType: .keynoteCell),
        Cell(image: "FrankDoepke", speaker: "Frank Doepke", extraSpeaker: 0, startingTime: "1900", endingTime: "1940", location: "Hall 1", title: "Vision with Core ML", sessionNumber: 717, track: TrackType.designTrack, favorite: false, eventDescription: "blablabla", imageMap: "ExampleMap", speakerFunction: "Director of Photography", speakerCompany: "Pixar Animation Studios", speakerDescription: "Blablabla", cellType: .keynoteCell)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        eventData = EventData(sessions:
            [Session(startingHour: "1900", day: WeekDay.Monday, keynotes: 2),
             Session(startingHour: "2000" , day: WeekDay.Monday, keynotes: 0),
             Session(startingHour: "1400",day: WeekDay.Tuesday, keynotes: 0)])
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let keynote = sender as? Cell {
            if segue.identifier == "goToDetails" {
                guard let detailsViewController = segue.destination as? DetailsViewController else { return }
                detailsViewController.keynote = keynote
                
            }
        }
    }
}

//MARK: - Function that maps a track type to a certain color
extension CellController {
    func trackColor(trackType: TrackType) -> UIColor{
        switch trackType {
        case .devTrack:
            return UIColor.red
        case .designTrack:
            return UIColor.green
        case .iOSTrack:
            return UIColor.blue
        case .UXTrack:
            return UIColor.yellow
        }
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
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let info = eventData.sessions[section]
        let title = "\(info.day), \(info.startingHour.prefix(2)):\(info.startingHour.suffix(2))"
        
        return title
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "EventCell") as? KeynoteCell else {
            return UITableViewCell()
        }
        let event = keynotes[indexPath.row]
        
        //setting the name of the speaker and the number of extra guests and divigint them
        if event.extraSpeaker == 0 {
            //putting each word on the speaker name in one index of names array
            let names: [String] = event.speaker.components(separatedBy: " ")
            if names.count != 1 {
                cell.speakerName.text = names[0]
                cell.extraSpeakers.text = names[1]
            }
            else {
                cell.speakerName.text = event.speaker
                cell.extraSpeakers.text = ""
            }
        }
        else {
            cell.speakerName.text = event.speaker
            cell.extraSpeakers.text = "+\(event.extraSpeaker)"
        }
        
        cell.index = indexPath.row
        cell.delegate = self
        
        //cell.speakerName.text = event.speaker
        cell.speakerImage.image = UIImage(named: event.image)
        //cell.extraSpeakers.text = "\(event.extraSpeaker)"
        cell.TimeAndPlace.text = "\(event.startingTime.prefix(2)):\(event.startingTime.suffix(2)) - \(event.endingTime.prefix(2)):\(event.endingTime.suffix(2)) - \(event.location)"
        cell.keynoteTitle.text = event.title
        cell.sessionNumber.text = "Session \(event.sessionNumber)"
        cell.trackColor.backgroundColor = trackColor(trackType: event.track)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "goToDetails", sender: keynotes[indexPath.row])
    }
}

//MARK: - Setting up the delegate of the function
extension CellController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        let header = view as! UITableViewHeaderFooterView
        header.backgroundView?.backgroundColor = UIColor(red: 0.976, green: 0.976, blue: 0.976, alpha: 1)
        header.textLabel?.font = UIFont(name: "SFProText-Semibold", size: 13)
        header.textLabel?.textColor = UIColor(red: 0.556, green: 0.556, blue: 0.576, alpha: 1)
    }
}

//MARK: - The delegate from the favorite button
protocol FavoriteDelegate: class { //delegates the managing of a button to another class
    func buttonDidPress(_ button: UIButton, index: Int) -> Bool
}

extension CellController: FavoriteDelegate {
    func buttonDidPress(_ button: UIButton, index: Int) -> Bool{
        keynotes[index].favorite = !keynotes[index].favorite
        
        return keynotes[index].favorite
    }
}
