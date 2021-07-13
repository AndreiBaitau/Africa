//
//  VideoPlayerHelper.swift
//  Africa
//
//  Created by Андрей Баитов on 13.06.21.
//

import Foundation
import AVKit

var videoPlayer: AVPlayer?

func playVideo(filename: String, fileFormat:String) -> AVPlayer {
    
    if Bundle.main.url(forResource: filename, withExtension: fileFormat) != nil{
        videoPlayer = AVPlayer(url: Bundle.main.url(forResource: filename, withExtension: fileFormat)!)
        videoPlayer?.play()
    }
    
    return videoPlayer!
    
}
