//
//  BookwormApp.swift
//  Bookworm
//
//  Created by Samuel Hernandez Vicera on 4/4/24.
//
import SwiftData
import SwiftUI

@main
struct BookwormApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Book.self)
     
    }
}
