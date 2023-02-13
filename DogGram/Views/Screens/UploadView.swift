//
//  UploadView.swift
//  DogGram
//
//  Created by suraj kumar on 13/02/23.
//

import SwiftUI
struct UploadView: View {
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                Button {
                    print("hii")
                } label: {
                    Text("Take photo".uppercased())
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.MyTheme.yelloColor)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                .background(Color.MyTheme.ColorPurple)
                
                Button {
                    print("hii")
                } label: {
                    Text("Import photo".uppercased())
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.MyTheme.ColorPurple)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                .background(Color.MyTheme.yelloColor)


            }
            Image("logo.transparent")
                .resizable()
                .frame(width: 100, height: 100, alignment: .center)
                .shadow(radius: 12)

        }
        .edgesIgnoringSafeArea(.top)

    }
}

struct UploadView_Previews: PreviewProvider {
    static var previews: some View {
        UploadView()
    }
}
