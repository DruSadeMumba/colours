//
//  ColoursDetailVC.swift
//  RandomColours
//
//  Created by Dru Mumba on 24/03/2023.
//

import UIKit

class ColoursDetailVC: UIViewController {
    
    var colour: UIColor?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = colour ?? .blue
    }
}
