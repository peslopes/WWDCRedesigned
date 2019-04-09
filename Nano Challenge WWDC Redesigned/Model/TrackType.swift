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
    case iOSTrack
    case UXTrack
    
    var description: String {
        switch(self){
            
        case .devTrack:
            return "Developer Track"
        case .designTrack:
            return "Design Track"
        case .iOSTrack:
            return "iOS Track"
        case .UXTrack:
            return "UX Track"
        @unknown default:
            return "ERROR"
        }
    }
}
