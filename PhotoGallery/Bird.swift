//
//  Bird.swift
//  PhotoGallery
//
//  Created by Mongkol Teera (i7676893) on 12/05/2016.
//  Copyright © 2016 Hexatech. All rights reserved.
//

import Foundation

class Bird {
    
    
    var description: String!
    var name: String!
    
    init(name: String, description: String) {
        self.name = name
        self.description = description
    }

}

//Array of birds


func buildBirds() -> [Bird] {
    var birds = [Bird]()
    
    let x = Bird(name: "Alectoris-chukar-1", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
)
    birds.append(x)

    let y = Bird(name: "Mountain_Bluebird", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
)
    birds.append(y)
    
    let z = Bird(name: "Weaver_bird", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
    birds.append(z)

    
    
    
    
    return birds
}



//images = ["Alectoris-chukar-1","Great_tit_side-on","Weaver_bird"]