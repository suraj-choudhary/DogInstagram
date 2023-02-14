//
//  UploadView.swift
//  DogGram
//
//  Created by suraj kumar on 13/02/23.
//
import UIKit
import SwiftUI
struct UploadView: View {
    @State var showImagePicker: Bool = false
    @State var imagSelected: UIImage = UIImage(named: "logo")!
    @State var sourceType: UIImagePickerController.SourceType = .camera
    
    @State var showPostImageView: Bool = false
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                Button {
                    sourceType = UIImagePickerController.SourceType.camera
                    showImagePicker.toggle()
                } label: {
                    Text("Take photo".uppercased())
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.MyTheme.yelloColor)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                .background(Color.MyTheme.ColorPurple)
                
                Button {
                    sourceType = UIImagePickerController.SourceType.photoLibrary
                    showImagePicker.toggle()
                    
                } label: {
                    Text("Import photo".uppercased())
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.MyTheme.ColorPurple)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                .background(Color.MyTheme.yelloColor)
                
                
            }
            
            .sheet(isPresented: $showImagePicker, onDismiss: segueToPostView) {
                ImagePicker(imageSelector: $imagSelected, sorceType: $sourceType)
            }
            Image("logo.transparent")
                .resizable()
                .frame(width: 100, height: 100, alignment: .center)
                .shadow(radius: 12)
                .fullScreenCover(isPresented: $showPostImageView) {
                    PostImageView(imageSelected: $imagSelected)
                }
            
        }
        .edgesIgnoringSafeArea(.top)
        
    }
    
    
    //MARK: post view
    func segueToPostView() {
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
            showPostImageView.toggle()
            
        }
    }
}

struct UploadView_Previews: PreviewProvider {
    static var previews: some View {
        UploadView()
    }
}
