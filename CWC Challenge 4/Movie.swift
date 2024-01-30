//
//  Movie.swift
//  CWC Challenge 4
//
//  Created by Matthew Dembinski on 1/30/24.
//

import Foundation

struct Movie: Identifiable {
    
    var id: UUID = UUID()
    var title: String
    var description: String
    var directedBy: String
    var releaseYear: Int
    var isDoneWatching: Bool
    var rating: Int
    
}
