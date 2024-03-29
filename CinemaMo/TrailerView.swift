//
//  TrailerView.swift
//  CinemaMo
//
//  Created by mohammed on 27/02/2024.
//

import SwiftUI

struct TrailerView: View {
    // MARK: - Properties
    
    @State var trailers : [TrailerModel] = decode(file: "trailers.json")
    @State var stackPath : [String] = []

    var body: some View {
        NavigationStack(path: $stackPath){
            List{
                ForEach(trailers ) { trialer in
                    NavigationLink(value: trialer.id){
                        trailerCellView(trailer: trialer)
                    }
                }
            }
            .navigationTitle("Movie trailers")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        trailers.shuffle()
                    }, label: {
                        Image(systemName: "shuffle")
                    })
                }
            }
            .navigationDestination(for: String.self){ index in
                let triler = trailers.first { $0.id == index}
                TrialerPlayerView(trailer: index)
            }
        }
    }
}

#Preview {
    TrailerView()
}
