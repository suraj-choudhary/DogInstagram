//
//  ImageGreedView.swift
//  DogGram
//
//  Created by suraj kumar on 10/02/23.
//
import SwiftUI
struct ImageGreedView: View {
    @ObservedObject var posts: PostArrayObject
    var body: some View {
        LazyVGrid(columns:
                    [GridItem(.flexible()),
                     GridItem(.flexible()),
                     GridItem(.flexible())
                    ],
                  alignment: .center,
                  spacing: nil,
                  pinnedViews: []) {
            ForEach(posts.dataArray, id: \.self) { post in
                NavigationLink(destination: FeedView(title: "post", posts: PostArrayObject(post: post))) {
                    PostView(post: post, showHeaderAndFooter: false)

                }
            }
        }
    }
}
struct ImageGreedView_Previews: PreviewProvider {
    static var previews: some View {
        ImageGreedView(posts: PostArrayObject())
            .previewLayout(.sizeThatFits)
    }
}
