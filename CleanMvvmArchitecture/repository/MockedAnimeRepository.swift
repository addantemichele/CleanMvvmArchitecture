//
//  LocalAnimeRepository.swift
//  CleanMvvmArchitecture
//
//  Created by michele addante on 03/01/23.
//

import Foundation

class MockedAnimeRepository : AnimeRepository {
    
    func loadAnime(completion : @escaping (Result<[AnimeModel], Error>) -> Void) {
        DispatchQueue.main.async {
            completion(.success(AnimeModel.sempleData))
        }
        return
    }
    
    
}
