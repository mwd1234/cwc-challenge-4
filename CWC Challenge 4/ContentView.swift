//
//  ContentView.swift
//  CWC Challenge 4
//
//  Created by Matthew Dembinski on 1/30/24.
//

import SwiftUI

struct ContentView: View {
    @State var moviesToDisplay:[Movie] = [Movie]()
    @State var listTitle:String
    var dataService = DataService()
    
    
    var body: some View {
        VStack (alignment: .leading) {
            Text(listTitle)
                .font(.largeTitle)
                .bold()
            List (moviesToDisplay) { movie in
                MovieRowView(movie: movie)
            }
            .listStyle(.plain)
            
            HStack {
                Spacer()
                Button {
                    moviesToDisplay = dataService.getListToWatch()
                    listTitle = "List to Watch"
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 15)
                            .foregroundColor(.blue)
                            .frame(height: 40)
                        Text("List to Watch")
                            .foregroundColor(.white)
                    }
                }
                Button {
                    moviesToDisplay = dataService.getWatched()
                    listTitle = "Watched"
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 15)
                            .foregroundColor(.blue)
                            .frame(height: 40)
                        Text("Watched")
                            .foregroundColor(.white)
                    }
                }
                Spacer()
            }

        }
        .onAppear(perform: {
            moviesToDisplay = dataService.getListToWatch()
        })
        .padding()
    }
    
    
    
    
}

#Preview {
    ContentView(listTitle: "List to Watch")
}



