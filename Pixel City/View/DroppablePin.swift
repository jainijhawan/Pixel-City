//
//  DropablePin.swift
//  Pixel City
//
//  Created by Jai Nijhawan on 05/04/19.
//  Copyright © 2019 Jai Nijhawan. All rights reserved.
//

import UIKit
import  MapKit

class DroppablePin : NSObject, MKAnnotation {
    var coordinate : CLLocationCoordinate2D
    var identifier : String
    
    init(coordinate : CLLocationCoordinate2D, indentifier :String ){
        self.coordinate = coordinate
        self.identifier = indentifier
        super.init()
    }
}
