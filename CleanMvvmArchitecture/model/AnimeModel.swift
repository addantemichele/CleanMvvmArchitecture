//
//  AnimeModel.swift
//  CleanMvvmArchitecture
//
//  Created by michele addante on 03/01/23.
//

import Foundation

struct  AnimeModel: Identifiable, Codable {
    let id: UUID
    var title : String
    var numberOfEpisodes: Int
    
    init(id : UUID = UUID(), title : String, numberOfEpisodes : Int ){
        self.id = id
        self.title = title
        self.numberOfEpisodes = numberOfEpisodes
    }
}
