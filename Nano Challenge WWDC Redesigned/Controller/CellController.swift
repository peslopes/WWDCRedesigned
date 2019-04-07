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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        eventData = EventData(sessions:
            [Session(startingHour: 1900, day: WeekDay.Monday, keynotes: 4),
             Session(startingHour: 2000 , day: WeekDay.Monday, keynotes: 3),
             Session(startingHour: 1400,day: WeekDay.Tuesday, keynotes: 5)])
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
        return UITableViewCell(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
    }
}
