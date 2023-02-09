//
//  CommentView.swift
//  DogGram
//
//  Created by suraj kumar on 07/02/23.
//
import SwiftUI
struct CommentView: View {
    @State var submissionText: String = ""
    
    @State var commentArray = [CommentModel]()
    var body: some View {
        VStack {
            ScrollView {
                LazyVStack {
                    
                    ForEach(commentArray, id: \.self) { array in
                        
                        MessageView(comment: array)
                    }
                    
                }
            }
            HStack {
                Image("dog1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40, alignment: .center)
                    .cornerRadius(20)
                TextField("Add a comment here....", text: $submissionText)
                
                Button {
                    print(submissionText)
                } label: {
                    Image(systemName: "paperplane.fill")
                        .font(.title2)
                }
                .accentColor(Color.MyTheme.ColorPurple)
            }
            .padding(.all, 6)
        }
        .navigationBarTitle("comment")
        .navigationBarTitleDisplayMode(.inline)
        .onAppear() {
            getComment()
        }
    }
    
    
    //MARK: Function
    
    func getComment() {
        
        print("Get comment from database:")
        
        let comment1 = CommentModel(commentID: "", userID: "", username: "Nex jow", content: "this is comment", dateCreated: Date())
        let comment2 = CommentModel(commentID: "", userID: "", username: "Nex jow", content: "this is comment", dateCreated: Date())
        let comment3 = CommentModel(commentID: "", userID: "", username: "Nex jow", content: "this is comment", dateCreated: Date())
        let comment4 = CommentModel(commentID: "", userID: "", username: "Nex jow", content: "this is comment", dateCreated: Date())
        
        self.commentArray.append(comment1)
        self.commentArray.append(comment2)
        self.commentArray.append(comment3)
        self.commentArray.append(comment4)
    }
}

struct CommentView_Previews: PreviewProvider {
    static var previews: some View {
        
        NavigationView {
            CommentView()
            
        }
    }
}
