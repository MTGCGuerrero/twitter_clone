//
//  SearchBar.swift
//  Twitter_Clone
//
//  Created by MaCanMichis on 3/20/23.
//

import SwiftUI

struct SearchBar: View {
    @Binding var text: String
    @Binding var isEditing: Bool
    var body: some View {
        HStack{
            TextField("Search Twitter", text: $text)
                .padding(8)
                .padding(.horizontal,24)
                .background(Color(.systemGray6))
                .cornerRadius(20)
                .overlay(
                    HStack{
                        Image("Search")
                            .foregroundColor(.gray)
                            .frame(minWidth: 0, maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                            .padding(.leading,8)
                    })
            Button(action: {
                isEditing = false
                text = ""
                UIApplication.shared.endEditing()
            }, label: {
                Text("Cancel")
                    .foregroundColor(.black)
                    .padding(.trailing,8)
                    .transition(.move(edge: .trailing))
                    .animation(.default)
            })
        }
        .onTapGesture {
            isEditing = true
        }
    }
}


