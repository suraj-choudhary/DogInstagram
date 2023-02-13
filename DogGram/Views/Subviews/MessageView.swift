//
//  MessageView.swift
//  DogGram
//
//  Created by suraj kumar on 07/02/23.
//
import SwiftUI
struct MessageView: View {
    @State var comment: CommentModel
    var body: some View {
        HStack {
            //profile image
            Image("dog1")
                .resizable()
                .scaledToFill()
                .frame(width: 40, height: 40, alignment: .center)
                .cornerRadius(20)
            
            VStack(alignment: .leading, spacing: 4) {
                //user name
                Text(comment.username)
                    .font(.caption)
                    .foregroundColor(Color.gray)
                //content
                Text(comment.content)
                    .padding(.all, 10)
                    .foregroundColor(Color.primary)
                    .background(Color.gray)
                    .cornerRadius(10)
            }
            Spacer(minLength: 0)
        }
    }
}
struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        var comment: CommentModel = CommentModel(commentID: "", userID: "", username: "suraj kumar", content: "This photo is cool hahah", dateCreated: Date())
        
        MessageView(comment: comment)
            .previewLayout(.sizeThatFits)
    }
}
