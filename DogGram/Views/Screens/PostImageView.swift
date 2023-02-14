//
//  PostImageView.swift
//  DogGram
//
//  Created by suraj kumar on 14/02/23.
//

import SwiftUI
struct PostImageView: View {
    @State var captionText: String = ""
    @Binding var imageSelected: UIImage
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            HStack {
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "xmark")
                        .font(.title)
                        .padding()
                    
                }
                .accentColor(.primary)
                
                Spacer()
                
            }
            ScrollView(.vertical, showsIndicators: false) {
                Image(uiImage: imageSelected)
                
                    .resizable()
                    .scaledToFill()
                    .frame(width: 200, height: 200, alignment: .center)
                    .cornerRadius(12)
                    .clipped()
                TextField("Add your caption here", text: $captionText)
                    .padding()
                    .frame(height: 60)
                    .frame(maxWidth: .infinity)
                    .background(Color.MyTheme.beigeColor)
                    .cornerRadius(12)
                    .font(.headline)
                    .padding(.horizontal)
                    .autocapitalization(.sentences)
                
                
                Button {
                    postPicture()
                } label: {
                    Text("Post Picture".uppercased())
                        .font(.title3)
                        .fontWeight(.bold)
                        .frame(height: 60)
                        .frame(maxWidth: .infinity)
                        .background(Color.MyTheme.ColorPurple)
                        .cornerRadius(12)
                        .padding(.horizontal)
                    
                }
                .accentColor(Color.MyTheme.yelloColor)

            }
        }
    }
    
    
    func postPicture() {
        print("post picture to database")
    }
}

struct PostImageView_Previews: PreviewProvider {
    @State static var image = UIImage(named: "dog1")!
    static var previews: some View {
        PostImageView(imageSelected: $image)
    }
}
