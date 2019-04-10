//
//  TrackType.swift
//  Nano Challenge WWDC Redesigned
//
//  Created by Pedro Enrique Sobrosa Lopes on 05/04/19.
//  Copyright © 2019 WWDC Redesigned. All rights reserved.
//

import Foundation

enum TrackType {
    case devTrack
    case designTrack
    case featuredTrack
    case frameworksTrack
    case graphicsGamesTrack
    
    var description: String {
        switch(self){
            
        case .devTrack:
            return "Developer Track"
        case .designTrack:
            return "Design Track"
        case .featuredTrack:
            return "Featured Track"
        case .frameworksTrack:
            return "Frameworks Track"
        case .graphicsGamesTrack:
            return "Graphics and Games Track"
        }
    }
}
