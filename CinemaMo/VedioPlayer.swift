//
//  VedioPlayer.swift
//  CinemaMo
//
//  Created by mohammed on 16/03/2024.
//

import Foundation
import AVKit

var videoPlayer : AVPlayer?

func playVideo(fileName: String , fileFormat : String) -> AVPlayer {
    if Bundle.main.url(forResource: fileName, withExtension: fileFormat) != nil {
        videoPlayer = AVPlayer(url: Bundle.main.url(forResource: fileName, withExtension: fileFormat)!)
        videoPlayer?.play()
    }
    return videoPlayer!
}
