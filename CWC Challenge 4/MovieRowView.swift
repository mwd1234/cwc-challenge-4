//
//  MovieRowView.swift
//  CWC Challenge 4
//
//  Created by Matthew Dembinski on 1/30/24.
//

import SwiftUI

struct MovieRowView: View {
    
    var movie: Movie
    
    var body: some View {
        VStack (alignment: .leading) {
            HStack {
                Text(movie.title)
                Spacer()
                Text(String(movie.releaseYear))
            }
            Text("Directed by: \(movie.directedBy)")
                .padding(.bottom)
            Text(movie.description)
                .padding(.bottom)
            HStack {
                Text("Personal Rating: ")
                ForEach(0..<movie.rating) { _ in
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                }
            }
            
        }
    }
}

#Preview {
    MovieRowView(movie: Movie(
        title: "Lawrence of Arabia",
        description: "An epic historical drama that follows the life of T.E. Lawrence during World War I.",
        directedBy: "David Lean",
        releaseYear: 1962,
        isDoneWatching: false,
        rating: 4
    ))
}
