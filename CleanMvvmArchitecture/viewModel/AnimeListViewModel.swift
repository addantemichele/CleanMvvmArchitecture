//
//  AnimeListViewModel.swift
//  CleanMvvmArchitecture
//
//  Created by michele addante on 03/01/23.
//

import Foundation

class AnimeListViewModel : ObservableObject {
    
    @Published var animeList : [AnimeModel] = []
    @Published var isBusy : Bool = false
    
    var reposotory : AnimeRepository
        
    func loadAnime(){
        isBusy = true
        reposotory.loadAnime(completion: { result in
            switch result{
            case .success(let list):
                self.animeList = list
                
            case .failure(_):
                self.animeList = []
            }
            self.isBusy = false
        })
    }
    
  
    
    init(reposotory : AnimeRepository){
        self.reposotory = reposotory
    }
}
