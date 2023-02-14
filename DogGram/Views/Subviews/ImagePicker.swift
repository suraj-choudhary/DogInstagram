//
//  ImagePicker.swift
//  DogGram
//
//  Created by suraj kumar on 13/02/23.
//

import Foundation
import SwiftUI
struct ImagePicker: UIViewControllerRepresentable {
    @Environment(\.presentationMode) var presentationMode
    @Binding var imageSelector: UIImage
    @Binding var sorceType: UIImagePickerController.SourceType
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<ImagePicker>) ->  UIImagePickerController {
        let picker = UIImagePickerController()
        picker.delegate = context.coordinator
        picker.sourceType = sorceType
        picker.allowsEditing = true
        return picker
    }
    func makeCoordinator() -> ImagePickerCoordinate {
        return ImagePickerCoordinate(parent: self)
    }
    class ImagePickerCoordinate: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
        var parent: ImagePicker
        init(parent: ImagePicker) {
            self.parent = parent
        }
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            
            if let image = info[.editedImage] as? UIImage  {
                
                //select
                parent.imageSelector = image
                
                //dismiss
                parent.presentationMode.wrappedValue.dismiss()
            }
            
        }
    }
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: UIViewControllerRepresentableContext<ImagePicker>) {}
}
