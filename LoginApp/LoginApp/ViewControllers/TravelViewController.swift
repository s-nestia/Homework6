//
//  TravelViewController.swift
//  LoginApp
//
//  Created by Anastasia Liapich on 7/5/22.
//  Copyright © 2022 Anastasia Liapich. All rights reserved.
//

import UIKit

class TravelViewController: UIViewController {

    @IBOutlet var travelsStack: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        for travel in User.anastasia.person.travels {
            let label = UILabel()
            label.text = "\(travel.country)"
            let photo = UIImageView(image: UIImage(named: travel.photo))
            let photoAndLabel = UIStackView(arrangedSubviews: [photo,label])
            photoAndLabel.axis = .horizontal
            photoAndLabel.distribution = .fillEqually
            travelsStack.addArrangedSubview(photoAndLabel)
        }
        setGradientBackground()
    }
}
