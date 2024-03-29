//
//  Decoder.swift
//  CinemaMo
//
//  Created by mohammed on 28/02/2024.
//

import SwiftUI

func decode<T: Codable>(file: String) -> T {
    // 1 locate json file
    guard let url = Bundle.main.url(forResource: file, withExtension: nil) else{
        fatalError("fail to locate the file")
    }
    //2 create a property for the data
    guard let data = try? Data(contentsOf: url) else {
        fatalError("Faild to load the data")
    }
    
    //3 create decoder
    let decoder = JSONDecoder()
    
    //4 create a prperty for decoded data
    guard let decodedData = try? decoder.decode(T.self, from: data) else {
        fatalError("Fail to decod the file")
    }
    //5 return the ready to use data
    
    return decodedData
}
