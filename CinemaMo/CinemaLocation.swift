//
//  CinemaLocation.swift
//  CinemaMo
//
//  Created by mohammed on 16/03/2024.
//

import Foundation
import MapKit

struct CinemaLocation : Identifiable , Codable {
    var id : String
    var name: String
    var image: String
    var latitude: Double
    var longitude: Double
    
    var location : CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
