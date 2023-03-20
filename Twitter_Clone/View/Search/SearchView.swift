//
//  SearchView.swift
//  Twitter_Clone
//
//  Created by MaCanMichis on 3/19/23.
//

import SwiftUI

struct SearchView: View {
    @State var text = ""
    @State var isEditing = false
    var body: some View {
        VStack{
            SearchBar(text: $text, isEditing: $isEditing)
                .padding(.horizontal)
            if !isEditing {
                List (0..<9) { i in
                    SearchCell(tag:"Hello", tweets:String(i))
                }
            } else{
                List(0..<9){_ in
                    SearchUserCell()
                }
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
