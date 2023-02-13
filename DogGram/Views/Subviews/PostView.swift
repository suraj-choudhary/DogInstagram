//
//  PostView.swift
//  DogGram
//
//  Created by suraj kumar on 06/02/23.
//
import SwiftUI
struct PostView: View {
    @State var post: PostModel
    var showHeaderAndFooter: Bool
    
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            if showHeaderAndFooter {
                //MARK: HEADER
                HStack {
                    Image("dog1")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 30, height: 30, alignment: .center)
                        .cornerRadius(15)
                    Text(post.username)
                        .font(.callout)
                        .fontWeight(.medium)
                        .foregroundColor(.primary)
                    Spacer()
                    Image(systemName: "ellipsis")
                        .font(.headline)
                }
                .padding(.all, 6)
                
            }
            //MARK: IMAGES
            Image("dog1")
                .resizable()
                .scaledToFit()
            
            //MARK: FOOTER
            
            if showHeaderAndFooter {
                HStack(alignment: .center, spacing: 20) {
                    
                    Image(systemName: "heart")
                        .font(.title3)
                    
                    //MARK: commnet icon
                    
                    NavigationLink {
                        CommentView()
                    } label: {
                        Image(systemName: "bubble.middle.bottom")
                            .font(.title3)
                            .foregroundColor(Color.primary)
                    }
                    Image(systemName: "paperplane")
                        .font(.title3)
                    Spacer()
                    
                }
                .padding(.all, 6)
                
                if let caption = post.caption {
                    HStack {
                        Text(caption)
                        Spacer(minLength: 0)
                        
                    }
                    .padding(.all, 6)
                }
                
            }
            
        }
    }
}
struct PostView_Previews: PreviewProvider {
    static var post: PostModel = PostModel(postID: "", userID: "", username: "suraj",caption: nil, dateCreated: Date(), likedCount: 0, likedByUser: true)
    static var previews: some View {
        PostView(post: post, showHeaderAndFooter: true)
            .previewLayout(.sizeThatFits)
    }
}
