//
//  PostModel.swift
//  DogGram
//
//  Created by suraj kumar on 06/02/23.
//

import Foundation
import SwiftUI
struct PostModel: Identifiable, Hashable {
    var id = UUID()
    var postID: String
    var userID: String
    var username: String
    var caption: String?
    var dateCreated: Date
    var likedCount: Int
    var likedByUser: Bool
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
