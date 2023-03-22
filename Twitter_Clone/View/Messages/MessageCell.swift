//
//  MessageCell.swift
//  Twitter_Clone
//
//  Created by MaCanMichis on 3/22/23.
//

import SwiftUI

struct MessageCell: View {
    @State var width = UIScreen.main.bounds.width
    var body: some View {
        VStack(alignment: .leading, spacing: nil) {
            Rectangle()
                .frame(width: width, height: 1, alignment: .center)
                .foregroundColor(.gray)
                .opacity(0.3)
            
            
            HStack{
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60, height: 60)
                    .cornerRadius(30)
                    .padding(.leading)
                
                VStack(alignment: .leading, spacing: 0) {
                    HStack{
                        Text("Michi")
                            .fontWeight(.bold)
                            .foregroundColor(.primary)
                        Text("@MIhcisUI")
                            .foregroundColor(.gray)
                        Spacer(minLength: 0)
                        Text("Last DateMessage")
                            .foregroundColor(.gray)
                            .padding(.trailing)
                    }
                    Text("You: How is it going?")
                        .foregroundColor(.gray)
                    Spacer()
                }
            }
            .padding(.top,2)
        }
        .frame(width: width, height: 84)
    }
}

struct MessageCell_Previews: PreviewProvider {
    static var previews: some View {
        MessageCell()
    }
}
