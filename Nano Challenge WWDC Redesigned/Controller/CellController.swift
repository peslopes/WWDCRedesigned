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
    
    var eventData : EventData = EventData(keynotesPerHour: [:])
    var indexPerDate : [Int:Date] = [:]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let formatterDate = DateFormatter()
        formatterDate.dateFormat = "EEEE HH:mm"
        // Do any additional setup after loading the view.

        indexPerDate[0] = formatterDate.date(from: "Monday 19:00")!
        indexPerDate[1] = formatterDate.date(from: "Monday 20:00")!
        indexPerDate[2] = formatterDate.date(from: "Tuesday 14:00")!

        
        eventData = EventData(keynotesPerHour: [indexPerDate[0]!: 4,
                                               indexPerDate[1]!: 3,
                                               indexPerDate[2]!: 5])
    }
}

//MARK: - Source of data of the table view
extension CellController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return eventData.keynotesPerHour.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return eventData.keynotesPerHour[indexPerDate[section]!]!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
    }
}
