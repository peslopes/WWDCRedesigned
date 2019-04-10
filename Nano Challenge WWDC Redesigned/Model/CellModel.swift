//
//  CellModel.swift
//  Nano Challenge WWDC Redesigned
//
//  Created by Pedro Enrique Sobrosa Lopes on 05/04/19.
//  Copyright © 2019 WWDC Redesigned. All rights reserved.
//

import Foundation

struct Cell {
    let image: String
    let speaker: String
    let extraSpeaker: Int
    let startingTime: String
    let endingTime: String
    let location: String
    let title: String
    let sessionNumber: Int
    let track: TrackType
    var favorite: Bool
    let eventDescription: String
    let imageMap: String
    let speakerFunction: String
    let speakerCompany: String
    let speakerDescription: String
    let cellType: CellType
    let dayOfTheWeek: WeekDay
    let dayOfTheMonth: Int
}

enum CellType {
    case aboutEventCell
    case keynoteCell
    case buttonCell
    case imagemMapCell
    case aboutSpeakerCell
}
