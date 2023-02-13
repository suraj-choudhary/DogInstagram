//
//  BrowseView.swift
//  DogGram
//
//  Created by suraj kumar on 10/02/23.
//

import SwiftUI
struct BrowseView: View {
    var posts = PostArrayObject()
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
          CarauselView()
            ImageGreedView(posts: posts)
        }
        .navigationTitle("Browse")
        .navigationBarTitleDisplayMode(.large)
    }
}
struct BrowseView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            BrowseView()

        }
    }
}
