//
//  TimeAndPlace.swift
//  Nano Challenge WWDC Redesigned
//
//  Created by Rafael Ferreira on 07/04/19.
//  Copyright © 2019 WWDC Redesigned. All rights reserved.
//

import Foundation

enum WeekDay {
    case Monday
    case Tuesday
    case Wednesday
    case Thursday
    case Friday
}

struct Session {
    let startingHour: Int //to be used with 4 digits like military time
    let day: WeekDay
    let keynotes: Int
}
