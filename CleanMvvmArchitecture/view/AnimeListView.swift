//
//  AnimeListView.swift
//  CleanMvvmArchitecture
//
//  Created by michele addante on 03/01/23.
//

import SwiftUI

struct AnimeListView: View {
    
    @StateObject var viewModel : AnimeListViewModel
    
    var body: some View {
        ZStack{
            List{
                ForEach($viewModel.animeList){ $anime in
                    
                    HStack{
                        Text(anime.title)
                        Spacer()
                        Text(String(anime.numberOfEpisodes))
                            .foregroundColor(.gray)
                            .fontWeight(.light)
                    }
                   
                }
            }
           
                ProgressView()
                .isHidden($viewModel.isBusy.not)
            
            
        }
        .navigationTitle("Anime list")
        .onAppear{
            viewModel.loadAnime()
        }
    }
}

struct AnimeListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            AnimeListView(viewModel : AnimeListViewModel(reposotory: MockedAnimeRepository()))
                .previewDevice("iPhone 12")
        }
       
    }
}
