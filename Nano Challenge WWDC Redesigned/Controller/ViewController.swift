//
//  ViewController.swift
//  Nano Challenge WWDC Redesigned
//
//  Created by Pedro Enrique Sobrosa Lopes on 05/04/19.
//  Copyright © 2019 WWDC Redesigned. All rights reserved.
//

import UIKit

extension UIColor {
    
    static var defaultGray: UIColor {
        return UIColor(red: 249/255, green: 249/255, blue: 249/255, alpha: 1)
    }
    
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.view.backgroundColor = .defaultGray
        // Do any additional setup after loading the view.
    }


}

