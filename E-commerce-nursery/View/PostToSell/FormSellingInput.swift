//
//  FormSellingInput.swift
//  E-commerce-nursery
//
//  Created by Ruchir on 8/26/21.
//

import SwiftUI
import FirebaseStorage

struct FormSellingInput: View {
    
    @State var shown = false
    
    var body: some View {
        Button(action: {
            self.shown.toggle()
        }) {
            Text("Upload Image")
        }.sheet(isPresented: $shown) {
        imagePicker(shown: $shown)
        }
    }
    
}

struct FormSellingInput_Previews: PreviewProvider {
    static var previews: some View {
        FormSellingInput()
    }
}


struct imagePicker: UIViewControllerRepresentable {
    func makeCoordinator() -> imagePicker.Coordinator {
        return imagePicker.Coordinator(parent1: self)
    }
    
    
    @Binding var shown: Bool
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<imagePicker>) -> imagePicker.UIViewControllerType {
        
        let imagepic = UIImagePickerController()
        imagepic.sourceType = .photoLibrary
        imagepic.delegate = context.coordinator
        return imagepic
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: UIViewControllerRepresentableContext<imagePicker>) {
    }
    
    class Coordinator: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
        let randomID = UUID.init().uuidString
        var parent: imagePicker!
        init(parent1:imagePicker) {
            parent = parent1
        }
        
        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            parent.shown.toggle()
        }
        
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]) {
            
            let image = info[.originalImage] as! UIImage
            
            let storage = Storage.storage()
            storage.reference().child("images/\(randomID).png").putData(image.jpegData(compressionQuality: 0.35)!, metadata: nil) { [self]
                (_, err) in

                if err != nil {
                    print(err?.localizedDescription)
                }
                else {
                    print("successfull")
                    storage.reference().child("images/\(randomID).png").downloadURL(completion: {url, error in
                        guard let url = url, error == nil else {
                            return
                        }

                        let urlString = url.absoluteString
                        print("Download URL: \(urlString)")
                        //UserDefaults.standard.set
                    })
                }
                parent.shown.toggle()
            }
        }
    }
}

