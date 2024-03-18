//
//  Item.swift
//  MyFavoriteSinger
//
//  Created by apprenant68 on 11/03/2024.
//

import Foundation
import SwiftData

@Model
class Artist {
    @Attribute(.unique) var name: String
    var song : String
    
    init(name: String, song: String) {
        self.name = name
        self.song = song
    }
}
