//
//  AnimeRepositoryProtocol.swift
//  CleanMvvmArchitecture
//
//  Created by michele addante on 03/01/23.
//

import Foundation

protocol AnimeRepository{
    
    func loadAnime(completion : @escaping (Result<[AnimeModel], Error>) -> Void)
}
