//
//  TopBar.swift
//  Twitter_Clone
//
//  Created by MaCanMichis on 3/22/23.
//

import SwiftUI

struct TopBar: View {
    @State var width = UIScreen.main.bounds.width
    @Binding var x:CGFloat
    var body: some View {
        VStack{
            HStack{
                Button(action: {
                    x = 0
                }, label: {
                    Image(systemName: "line.horizontal.3")
                        .font(.system(size: 24))
                        .foregroundColor(Color("bg"))
                })
                Image("Twitter")
                    .resizable()
                    .scaledToFill()
                    .padding(.trailing)
                    .frame(width: 20, height: 20)
                Spacer(minLength: 0)
            }
            .padding()
            Rectangle()
                .frame(width: width, height: 1)
                .foregroundColor(.gray)
                .opacity(0.3)
        }
        .background(Color.white)
    }
}


