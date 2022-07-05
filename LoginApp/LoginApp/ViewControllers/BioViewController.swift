//
//  BioViewController.swift
//  LoginApp
//
//  Created by Anastasia Liapich on 7/5/22.
//  Copyright © 2022 Anastasia Liapich. All rights reserved.
//

import UIKit

class BioViewController: UIViewController {

    @IBOutlet var photo: UIImageView!
    @IBOutlet var personalInformation: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let bio = User.anastasia.person.bio
        personalInformation.text = "My name is \(bio.name). My age is \(bio.age)."
        photo.image = UIImage(named: bio.photo)
        
        setGradientBackground()
    }
}
