//
//  MovieModel.swift
//  CinemaMo
//
//  Created by mohammed on 28/02/2024.
//

import Foundation

struct MovieModel: Codable , Identifiable {
    let id: String
    let name: String
    let headline: String
    let description: String
    let link: String
    let image : String
    let gallery : [String]
    let actor : [String]
}
