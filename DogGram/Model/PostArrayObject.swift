//
//  PostArrayObject.swift
//  DogGram
//
//  Created by suraj kumar on 07/02/23.
//

import Foundation
class PostArrayObject: ObservableObject {
    @Published var dataArray = [PostModel]()
    init() {
        print("Fetch from data base")
        let post1 = PostModel(postID: "", userID: "", username: "joe",caption: "This is caption", dateCreated: Date(), likedCount: 0, likedByUser: true)
        let post2 = PostModel(postID: "", userID: "", username: "joe",caption: "This is caption", dateCreated: Date(), likedCount: 0, likedByUser: true)
        let post3 = PostModel(postID: "", userID: "", username: "joe",caption: "This is caption", dateCreated: Date(), likedCount: 0, likedByUser: true)
        let post4 = PostModel(postID: "", userID: "", username: "joe",caption: "This is caption", dateCreated: Date(), likedCount: 0, likedByUser: true)
        self.dataArray.append(post1)
        self.dataArray.append(post2)
        self.dataArray.append(post3)
        self.dataArray.append(post4)
    }
    
    ///Use for single post selection
    init(post: PostModel) {
        self.dataArray.append(post)
    }
    
    
}
