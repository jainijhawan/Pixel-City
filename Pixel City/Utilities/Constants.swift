//
//  Constants.swift
//  Pixel City
//
//  Created by Jai Nijhawan on 08/04/19.
//  Copyright © 2019 Jai Nijhawan. All rights reserved.
//

import Foundation

let apiKey = "3d9db3bf5d4976fa8969aeff76da2d6c"

func flickrUrl(forApiKey key: String, withAnnotation annotation: DroppablePin, andNumberOfPhotos number: Int) -> String {
    return "https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=\(apiKey)&lat=\(annotation.coordinate.latitude)&lon=\(annotation.coordinate.longitude)&radius=1&radius_units=mi&per_page=\(number)&format=json&nojsoncallback=1"
}
