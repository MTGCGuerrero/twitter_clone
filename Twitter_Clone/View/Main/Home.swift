//
//  Home.swift
//  Twitter_Clone
//
//  Created by MaCanMichis on 3/19/23.
//

import SwiftUI

struct Home: View {
    var body: some View {
        VStack{
            ZStack{
                TabView{
                    Feed()
                        .tabItem { Image("Home") }
                    SearchView()
                        .tabItem { Image("Search") }
                    NotificationsView()
                        .tabItem { Image("Notification") }
                    MessagesView()
                        .tabItem { Image("Messages") }
                    
                    
                }
                
                
                
            }
            
            
            
            
        }
       
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
