//
//  AddBookView.swift
//  Bookworm
//
//  Created by Samuel Hernandez Vicera on 4/4/24.
//

import SwiftUI

struct AddBookView: View {
    @Environment(\.modelContext) var modelContext
    @Environment(\.dismiss) var dismiss
    @State private var title = ""
    @State private var author = ""
    @State private var rating = 3
    @State private var genre = "Fantasy"
    @State private var review = ""
  
    
    let genres = ["Fantasy", "Horror", "Kids", "Mystery", "Poetry", "Romance", "Thriller"]
    
    var validatingInputForms:  Bool {
        if title.trimmingCharacters(in: .whitespacesAndNewlines) == "" || author.trimmingCharacters(in: .whitespacesAndNewlines) == "" || review.trimmingCharacters(in: .whitespacesAndNewlines) == "" {
            return false
        }
        else {
          return  true
        }
    }

    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    TextField("Name of Book", text: $title)
                    
                    TextField("Author's name", text: $author)
                    
                    Picker("Genre", selection: $genre) {
                        ForEach(genres, id: \.self) {
                            Text($0)
                        }
                    }
                }
                Section("Write a review below") {
                    TextEditor(text: $review)
                    
                    RatingView(rating: $rating)
                    
                }
                Section {
                    Button("Save") {
                       let newBook = Book(title: title, author: author, genre: genre, review: review, rating: rating)
                        modelContext.insert(newBook)
                        dismiss()
                    }
                    .disabled(validatingInputForms == false)
                }
            }
        }
        .navigationTitle("Add Book")
    }
    
}

#Preview {
    AddBookView()
}
