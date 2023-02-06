//
//  PostView.swift
//  DogGram
//
//  Created by suraj kumar on 06/02/23.
//
import SwiftUI
struct PostView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            //MARK: HEADER
            HStack {
                Image("dog1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 30, height: 30, alignment: .center)
                .cornerRadius(15)
                Text("User Name here")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(.primary)
                Spacer()
                Image(systemName: "ellipsis")
                    .font(.headline)
                

            }
            .padding(.all, 6)
            
            //MARK: IMAGES
            Image("dog1")
                .resizable()
                .scaledToFit()
            
            //MARK: FOOTER
            HStack(alignment: .center, spacing: 20) {
                
                Image(systemName: "heart")
                    .font(.title3)
                Image(systemName: "bubble.middle.bottom")
                    .font(.title3)

                Image(systemName: "paperplane")
                    .font(.title3)
                
                Spacer()

            }
            .padding(.all, 6)
            
            HStack {
                Text("This is the caption for the foto")
                Spacer(minLength: 0)
                
            }
            .padding(.all, 6)
        }
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView()
            .previewLayout(.sizeThatFits)
    }
}
