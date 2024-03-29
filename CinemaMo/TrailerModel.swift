//
//  TrailerModel.swift
//  CinemaMo
//
//  Created by mohammed on 11/03/2024.
//

import Foundation

struct TrailerModel : Codable , Identifiable{
    var id: String
    var name: String
    var headline:String
    
    var thumbnail: String{
        return "thumb-\(id)"
    }
}
