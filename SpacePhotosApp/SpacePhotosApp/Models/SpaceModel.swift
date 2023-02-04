//
//  SpaceModel.swift
//  SpacePhotosApp
//
//  Created by Furkan Sarı on 3.02.2023.
//

import Foundation

struct SpaceModel : Decodable {
    let photos : [SpacePhotos]?
}


struct SpacePhotos : Decodable {
    let id, sol: Int?
    let camera: Camera?
    let imgSrc: String?
    let earthDate: String?
    let rover: Rover?

    enum CodingKeys: String, CodingKey {
        case id, sol, camera
        case imgSrc = "img_src"
        case earthDate = "earth_date"
        case rover
    }
}

// MARK: - Camera
struct Camera: Decodable {
    let id: Int?
    let name: String?
    let roverID: Int?
    let fullName: String?

    enum CodingKeys: String, CodingKey {
        case id, name
        case roverID = "rover_id"
        case fullName = "full_name"
    }
}



// MARK: - Rover
struct Rover: Decodable {
    let id: Int?
    let name: String?
    let landingDate, launchDate: String?
    let status: String?

    enum CodingKeys: String, CodingKey {
        case id, name
        case landingDate = "landing_date"
        case launchDate = "launch_date"
        case status
    }
}

enum RoverName: String, Decodable {
    case curiosity = "Curiosity"
    case opportunity = "Opportunity"
    case spirit = "Spirit"
}


