//
//  APIURLs.swift
//  SpacePhotosApp
//
//  Created by Furkan Sarı on 3.02.2023.
//

import Foundation

enum APIURLs {
    static func getPhotosURL(roverName:RoverName,page:Int) -> String {
        return "https://api.nasa.gov/mars-photos/api/v1/rovers/\(roverName)/photos?sol=1000&api_key=7BlVRkJU5DTSybv7KnRAa0pGBwV1T9D4liN3K2xx&page=\(page)"
    }
}
