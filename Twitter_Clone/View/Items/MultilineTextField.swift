//
//  MultilineTextField.swift
//  Twitter_Clone
//
//  Created by MaCanMichis on 3/20/23.
//

import SwiftUI


struct MultilineTextField : UIViewRepresentable{
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
    
    func makeCoordinator() -> MultilineTextField.Coordinator {
        return MultilineTextField.Coordinator(parent1: self)
    }
        

    @Binding var text: String
    
    func makeUIView(context: Context) -> some UITextView {
        let text = UITextView()
        text.isEditable = true
        text.text = "Type Something"
        text.isUserInteractionEnabled = true
        text.textColor = .gray
        text.font = .systemFont(ofSize: 20)
        text.delegate = context.coordinator
        return text
    }
    
    
    class Coordinator: NSObject, UITextViewDelegate {
        
        var parent : MultilineTextField
        
        init(parent1: MultilineTextField) {
            parent = parent1
        }
        
        
        func textViewDidBeginEditing(_ textView: UITextView) {
            textView.text = ""
            textView.textColor = .black
        }
        func textViewDidChange(_ textView: UITextView) {
            self.parent.text = textView.text
        }
        
        
        
        
        
    }
    
    
    
    
}
