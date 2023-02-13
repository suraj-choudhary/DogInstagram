//
//  FeedView.swift
//  DogGram
//
//  Created by suraj kumar on 06/02/23.
//

import SwiftUI
struct FeedView: View {
    var title: String
    @ObservedObject var posts: PostArrayObject
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            LazyVStack {
                ForEach(posts.dataArray, id: \.self) { post in
                    PostView(post: post, showHeaderAndFooter: true)
                }
            }
        }
        .navigationBarTitle(title)
        .navigationBarTitleDisplayMode(.inline)
    }
}
struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            FeedView(title: "Feed Test", posts: PostArrayObject())
        }
       
    }
}
