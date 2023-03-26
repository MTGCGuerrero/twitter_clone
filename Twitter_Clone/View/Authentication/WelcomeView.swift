//
//  WelcomeView.swift
//  Twitter_Clone
//
//  Created by MaCanMichis on 3/25/23.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationView{
            VStack{
                HStack{
                    Spacer(minLength: 0)
                    
                    Image("Twitter")
                        .resizable()
                        .scaledToFill()
                        .padding(.trailing)
                        .frame(width: 20, height: 20)
                    
                    Spacer(minLength: 0)
                }
                
                Spacer(minLength: 0)
                
                Text("See what is Happenning in the world right now")
                    .font(.system(size: 30, weight: .heavy, design: .default))
                    .frame(width: getRect().width * 0.9, alignment: .center)
                
                Spacer(minLength: 0)
                
                VStack(alignment: .center, spacing: 10, content: {
                    Button(action: {
                        print("Sign in with google")
                    }, label: {
                        HStack(spacing: nil, content: {
                            Image("google")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 25, height: 25)
                            Text("Continue with Google")
                                .fontWeight(.bold)
                                .font(.title3)
                                .padding()
                        })
                        .overlay(
                            RoundedRectangle(cornerRadius: 36)
                                .stroke(Color.black, lineWidth: 1)
                                .opacity(0.3)
                                .frame(width: 320, height: 60, alignment: .center)
                        )
                    })
                    Button(action: {
                        print("Sign in with apple")
                    }, label: {
                        HStack(spacing: nil, content: {
                            Image("apple")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 25, height: 25)
                            Text("Continue with Apple")
                                .fontWeight(.bold)
                                .font(.title3)
                                .padding()
                        })
                        .overlay(
                            RoundedRectangle(cornerRadius: 36)
                                .stroke(Color.black, lineWidth: 1)
                                .opacity(0.3)
                                .frame(width: 320, height: 60, alignment: .center)
                        )
                    })
                    
                    HStack{
                        Rectangle()
                            .foregroundColor(.gray)
                            .opacity(0.3)
                            .frame(width: getRect().width * 0.35, height: 1)
                        Text("Or")
                            .foregroundColor(.gray)
                        
                        Rectangle()
                            .foregroundColor(.gray)
                            .opacity(0.3)
                            .frame(width: getRect().width * 0.35, height: 1)
                    }
                    RoundedRectangle(cornerRadius: 36)
                        .foregroundColor(Color(red: 29/255, green: 161/255, blue: 242/255))
                        .frame(width: 320, height: 60, alignment: .center)
                        .overlay(
                        Text("Create an account")
                            .fontWeight(.bold)
                            .font(.title3)
                            .foregroundColor(.white)
                            .padding()
                        )
                })
                .padding()
                
                VStack(alignment: .leading, content: {
                    VStack{
                        Text("By singning, you agree to our") + Text("Terms")
                            .foregroundColor(Color(red: 29/255, green: 161/255, blue: 242/255))
                            + Text(",")
                            + Text("Privacy Policy")
                            .foregroundColor(Color(red: 29/255, green: 161/255, blue: 242/255))
                            + Text(", Cookie use")
                            .foregroundColor(Color(red: 29/255, green: 161/255, blue: 242/255))
                    }
                    .padding(.bottom)
                    
                    HStack(spacing : 2){
                        Text("Have an account already?")
                        Text("Log in")
                            .foregroundColor(Color(red: 29/255, green: 161/255, blue: 242/255))
                    }
                    })
                }
            .navigationBarHidden(true)
            .navigationBarTitle("")
        }
        }
        
    }


struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
