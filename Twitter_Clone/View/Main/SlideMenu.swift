//
//  SlideMenu.swift
//  Twitter_Clone
//
//  Created by MaCanMichis on 3/22/23.
//

import SwiftUI

struct SlideMenu: View {
    @State var show = false
    var body: some View {

        VStack{
            HStack(spacing: 0, content: {
                VStack(alignment: .leading, content: {
                    
                    Image("logo")
                        .resizable()
                        .frame(width: 60, height: 60)
                        .clipShape(Circle())
                    HStack(alignment: .top, spacing: 12, content: {
                        VStack(alignment: .leading, spacing: 12, content: {
                            Text("Michis")
                                .font(.title3)
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                            Text("@MichisUI")
                                .foregroundColor(.gray)
                            
                            HStack(spacing: 20) {
                                FollowView(count: 8, title: "Following")
                                
                                FollowView(count: 16, title: "Followers")
                            }
                            .padding(.top,10)
                            Divider()
                                .padding(.top,10)
                        })
                        Spacer(minLength: 0)
                        Button {
                            withAnimation{
                                self.show.toggle()
                            }
                        } label: {
                            Image(systemName: show ? "chevron.down" : "chevron.up")
                                .foregroundColor(Color("bg"))
                        }
                    })
                    
                })
                

            })
        }

    }
}

struct SlideMenu_Previews: PreviewProvider {
    static var previews: some View {
        SlideMenu()
    }
}
