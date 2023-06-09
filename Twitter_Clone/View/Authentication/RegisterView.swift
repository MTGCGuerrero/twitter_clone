//
//  RegisterView.swift
//  Twitter_Clone
//
//  Created by MaCanMichis on 3/26/23.
//

import SwiftUI

struct RegisterView: View {
    
    @State var name = ""
    @State var email = ""
    @State var password = ""
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        VStack{
            ZStack{
                HStack{
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Text("Cancel")
                            .foregroundColor(.blue)
                    })
                    Spacer()
                }
                .padding(.horizontal)
                Image("Twitter")
                    .resizable()
                    .scaledToFill()
                    .padding(.trailing)
                    .frame(width: 20, height: 20)
            }
            Text("Create your account")
                .font(.title)
                .bold()
                .padding(.top,35)
            VStack(alignment: .leading, spacing: nil, content: {
                CustomAuthTextField(placeholder: "Name", text: $name)
                CustomAuthTextField(placeholder: "Phone number or email", text: $email)
                SecureAuthTextfield(placeholder: "password", text: $password)
            })
            Spacer(minLength: 0)
            
            VStack{
                Rectangle()
                    .frame(height:1)
                    .foregroundColor(.gray)
                HStack{
                    Spacer()
                    
                    Button(action: {
                        
                    }, label: {
                        Capsule()
                            .frame(width: 60, height: 30, alignment: .center)
                            .foregroundColor(Color("bg"))
                            .overlay(
                                Text("Next")
                                    .foregroundColor(.white)
                            )
                    })
                }
                .padding(.trailing,24)
            }
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
