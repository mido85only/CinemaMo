//
//  TrialerPlayerView.swift
//  CinemaMo
//
//  Created by mohammed on 16/03/2024.
//

import SwiftUI
import AVKit

struct TrialerPlayerView: View {
    var trailer : String
    
    var body: some View {
        VideoPlayer(player: playVideo(fileName: trailer, fileFormat: "mp4"))
            .overlay(
                HStack{
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 32, height: 32, alignment: .center)
                        .padding(.top , 6)
                        .padding(.horizontal , 8)
                    
                    Text(trailer)
                        .font(.title3)
                        .padding()
                        .foregroundStyle(.accent)
                }
                ,alignment: .topLeading)
    }
}

#Preview {
    TrialerPlayerView(trailer: "moonfall")
}
