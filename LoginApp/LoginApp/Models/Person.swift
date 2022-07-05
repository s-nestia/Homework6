//
//  Person.swift
//  LoginApp
//
//  Created by Anastasia Liapich on 7/5/22.
//  Copyright © 2022 Anastasia Liapich. All rights reserved.
//

struct Person {
    struct Bio {
        let name: String
        let age: Int
        let photo: String
    }
    
    struct ImportantDate {
        let date: String
        let avent: String
    }
    
    struct Travel {
        let country: String
        let photo: String
    }
    
    let bio: Bio
    let importantDates: [ImportantDate]
    let travels: [Travel]
}
