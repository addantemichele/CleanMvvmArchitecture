//
//  NetworkAnimeRepository.swift
//  CleanMvvmArchitecture
//
//  Created by michele addante on 03/01/23.
//

import Foundation

class NetworkAnimeRepository : AnimeRepository {
    
    func loadAnime(completion : @escaping (Result<[AnimeModel], Error>) -> Void) {
        guard let url = URL(string: "https://api.jsonbin.io/v3/b/63b42032dfc68e59d57734de?meta=false") else {
            completion(.success([]))
                 return
             }
             let request = URLRequest(url: url)

             URLSession.shared.dataTask(with: request) { data, response, error in
                 if let data = data {
                     if let response = try? JSONDecoder().decode([AnimeModel].self, from: data) {
                         DispatchQueue.main.async {
                             completion(.success(response))
                         }
                         return
                     }
                 }
             }.resume()
    }
}
