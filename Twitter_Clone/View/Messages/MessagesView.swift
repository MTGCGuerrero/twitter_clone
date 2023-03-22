//
//  MessagesView.swift
//  Twitter_Clone
//
//  Created by MaCanMichis on 3/19/23.
//

import SwiftUI

struct MessagesView: View {
    var body: some View {
        VStack{
            ScrollView{
                ForEach(0..<9){ _ in
                    MessageCell()
                    
                }
            }
        }
    }
}

struct MessagesView_Previews: PreviewProvider {
    static var previews: some View {
        MessagesView()
    }
}
