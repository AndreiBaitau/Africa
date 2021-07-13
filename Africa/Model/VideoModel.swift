//
//  VideoModel.swift
//  Africa
//
//  Created by Андрей Баитов on 13.06.21.
//

import Foundation
struct  Video: Codable, Identifiable{
    let id:String
    let name:String
    let headline: String
    
    
    // Computed Property
    var thumbnail : String{
        "video-\(id)"
        
    }
}
