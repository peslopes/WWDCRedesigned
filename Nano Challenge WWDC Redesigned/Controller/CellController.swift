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

        Cell(image: "GeoffC", speaker: "Geoff C.", extraSpeaker: 2, startingTime: "1900", endingTime: "1940", location: "Hall 2", title: "Automating App Store Connect", sessionNumber: 303, track: TrackType.devTrack, favorite: false, eventDescription: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vehicula leo quis tincidunt aliquam. Etiam eget posuere odio. Ut consectetur pharetra lectus, id feugiat mauris auctor a.", imageMap: "ExampleMap", speakerFunction: "Director of something", speakerCompany: "Apple Inc.", speakerDescription: "Proin elementum nisi ut accumsan suscipit. Mauris interdum elit sed sem finibus iaculis. Mauris vestibulum aliquam ante eu vulputate. Nulla ultrices vestibulum fringilla. In hac habitasse platea dictumst. Donec ac vehicula nunc. Duis vel congue nulla, elementum bibendum sem. Aenean blandit quam vel scelerisque posuere. Duis porta eu enim sit amet mollis. Quisque sed lorem vitae odio congue euismod. Nunc risus metus, iaculis vitae aliquam at, iaculis et elit. In aliquet nibh eget risus laoreet egestas. Nunc at volutpat orci, vel mattis enim. Quisque fringilla tellus justo, vitae varius tortor finibus ut. Phasellus interdum ipsum dui, a lacinia nisl congue id.", cellType: .keynoteCell),
        Cell(image: "FrankDoepke", speaker: "Frank Doepke", extraSpeaker: 0, startingTime: "1900", endingTime: "1940", location: "Hall 1", title: "Vision with Core ML", sessionNumber: 717, track: TrackType.featuredTrack, favorite: false, eventDescription: "Cras laoreet sapien eu risus rutrum porttitor. Ut condimentum urna sed leo eleifend finibus. Pellentesque et euismod justo, vel eleifend lectus. Ut sollicitudin luctus tortor eget consequat. Etiam a lectus justo. Curabitur eu ligula dictum, tempor purus ac, auctor odio. Nunc maximus malesuada dictum. Suspendisse mollis arcu sem, id tincidunt lectus dictum eget. Integer sit amet augue id velit dapibus viverra vel maximus sapien. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Quisque eu condimentum leo, eget consectetur nunc. Vivamus elementum lobortis dui at molestie.", imageMap: "ExampleMap", speakerFunction: "Director of Photography", speakerCompany: "Pixar Animation Studios", speakerDescription: "Aliquam nunc ipsum, suscipit vel efficitur eget, euismod nec tellus. Suspendisse ut bibendum quam. Etiam pellentesque nulla quis arcu vulputate finibus.", cellType: .keynoteCell),
        Cell(image: "AlpYucebilgin", speaker: "Alp Yucebilgin", extraSpeaker: 0, startingTime: "1900", endingTime: "1940", location: "Hall 3", title: "Metal Shader Debugging and Profilling", sessionNumber: 608, track: TrackType.featuredTrack, favorite: false, eventDescription: "blablabla", imageMap: "ExampleMap", speakerFunction: "Director of Animation", speakerCompany: "Pixar Animation Studios", speakerDescription: "Blablabla", cellType: .keynoteCell),
        Cell(image: "JamesVest", speaker: "James Vest", extraSpeaker: 0, startingTime: "1900", endingTime: "1940", location: "Executive Ballroom", title: "VoiceOver: App Testing Beyond The Visuals", sessionNumber: 226, track: TrackType.designTrack, favorite: false, eventDescription: "blablabla", imageMap: "ExampleMap", speakerFunction: "Default Speaker", speakerCompany: "Pixar Animation Studios", speakerDescription: "Blablabla", cellType: .keynoteCell),
        Cell(image: "RickB", speaker: "Rick Belamonte", extraSpeaker: 1, startingTime: "2000", endingTime: "2000", location: "Hall 2", title: "Getting to Know Swift Package Manager", sessionNumber: 441, track: TrackType.frameworksTrack, favorite: false, eventDescription: "blablabla", imageMap: "ExampleMap", speakerFunction: "Default Speaker", speakerCompany: "Pixar Animation Studios", speakerDescription: "Blablabla", cellType: .keynoteCell),
        Cell(image: "WillLi", speaker: "Will Li", extraSpeaker: 1, startingTime: "2000", endingTime: "2030", location: "Hall 1", title: "Optimizing App Assets", sessionNumber: 227, track: TrackType.graphicsGamesTrack, favorite: false, eventDescription: "blablabla", imageMap: "ExampleMap", speakerFunction: "Default Speaker", speakerCompany: "Pixar Animation Studios", speakerDescription: "Blablabla", cellType: .keynoteCell),
        Cell(image: "AnnaTikhonova", speaker: "Anna Tikhonova", extraSpeaker: 0, startingTime: "2000", endingTime: "2040", location: "Hall 3", title: "Metal for Accelerating Machine Learning", sessionNumber: 609, track: TrackType.featuredTrack, favorite: false, eventDescription: "blablabla", imageMap: "ExampleMap", speakerFunction: "Default Speaker", speakerCompany: "Default Company", speakerDescription: "Blablabla", cellType: .keynoteCell),
        Cell(image: "ChrisM", speaker: "Chris Madelonovoas", extraSpeaker: 1, startingTime: "2100", endingTime: "2140", location: "Hall 2", title: "Advanced Debugging with Xcode and LLDB", sessionNumber: 412, track: TrackType.frameworksTrack, favorite: false, eventDescription: "blablabla", imageMap: "ExampleMap", speakerFunction: "Default Speaker", speakerCompany: "Default Company", speakerDescription: "Blablabla", cellType: .keynoteCell),
        Cell(image: "MarionM", speaker: "Marion Madelonovoas", extraSpeaker: 1, startingTime: "2100", endingTime: "2140", location: "Hall 3", title: "Understanding ArKit Tracking and Detection", sessionNumber: 610, track: TrackType.featuredTrack, favorite: false, eventDescription: "blablabla", imageMap: "ExampleMap", speakerFunction: "Default Speaker", speakerCompany: "Default Company", speakerDescription: "Blablabla", cellType: .keynoteCell)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        eventData = EventData(sessions:
            [Session(startingHour: "1900", day: WeekDay.Thursday, keynotes: [keynotes[0],keynotes[1],keynotes[2],keynotes[3]]),
             Session(startingHour: "2000" , day: WeekDay.Thursday, keynotes: [keynotes[4],keynotes[5],keynotes[6]]),
             Session(startingHour: "2100",day: WeekDay.Thursday, keynotes: [keynotes[7],keynotes[8]])])
        
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


//MARK: - Source of data of the table view
extension CellController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return eventData.sessions.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return eventData.sessions[section].keynotes.count
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
        cell.layer.shadowOffset = CGSize(width: 0, height: 0)
        cell.layer.shadowColor = UIColor.lightGray.cgColor
        cell.layer.shadowRadius = 10
        
        cell.layer.shadowOpacity = 0.20
        cell.layer.masksToBounds = false;
        cell.clipsToBounds = false;
        let event = eventData.sessions[indexPath.section].keynotes[indexPath.row]
        //setting the name of the speaker and the number of extra guests and divigint them
        //putting each word on the speaker name in one index of names array
        let names: [String] = event.speaker.components(separatedBy: " ")
        if event.extraSpeaker == 0 {
            if names.count != 1 {
                //cell.speakerName.text = names[0]
                if names[1].count < 7 {
                    cell.speakerName.text = names[0]
                    cell.extraSpeakers.text = names[1]
                }
                else {
                    cell.speakerName.text = "\(names[0]) \(names[1].prefix(1))."
                    cell.extraSpeakers.text = ""
                }
                
            }
            else {
                cell.speakerName.text = "\(names[0])"
                cell.extraSpeakers.text = ""
            }
        }
        else {
            if names[0].count < 7 {
                cell.speakerName.text = "\(names[0])"
                cell.extraSpeakers.text = "+\(event.extraSpeaker)"
            }
            else {
                cell.speakerName.text = "\(names[0]) \(names[1].prefix(1))."//event.speaker
                cell.extraSpeakers.text = "+\(event.extraSpeaker)"
            }
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
        performSegue(withIdentifier: "goToDetails", sender: eventData.sessions[indexPath.section].keynotes[indexPath.row])//keynotes[indexPath.row])
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
