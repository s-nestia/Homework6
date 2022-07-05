//
//  DateViewController.swift
//  LoginApp
//
//  Created by Anastasia Liapich on 7/5/22.
//  Copyright © 2022 Anastasia Liapich. All rights reserved.
//

import UIKit

class DatesViewController: UIViewController {

    @IBOutlet var datesStack: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for date in User.anastasia.person.importantDates {
            let label = UILabel()
            label.text = "\(date.date) - \(date.avent)"
            datesStack.addArrangedSubview(label)
            
        }
        setGradientBackground()
    }
}
