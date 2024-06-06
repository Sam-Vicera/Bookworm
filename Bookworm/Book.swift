//
//  Book.swift
//  Bookworm
//
//  Created by Samuel Hernandez Vicera on 4/4/24.
//

import Foundation
import SwiftData

@Model
class Book {
    var title: String
    var author: String
    var genre: String
    var review: String
    var rating: Int
    var dateCompleted: Date
    
    init(title: String, author: String, genre: String, review: String, rating: Int, dateCompleted: Date) {
        self.title = title
        self.author = author
        self.genre = genre
        self.review = review
        self.rating = rating
        self.dateCompleted = dateCompleted
    }
    
//    var validatingInputForms:  Bool {
//        if title.trimmingCharacters(in: .whitespacesAndNewlines) == "" || author.trimmingCharacters(in: .whitespacesAndNewlines) == "" || review.trimmingCharacters(in: .whitespacesAndNewlines) == "" {
//            return false
//        }
//        else {
//          return  true
//        }
//    }
}

