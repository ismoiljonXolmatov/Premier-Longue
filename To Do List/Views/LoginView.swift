//
//  LoginView.swift
//  To Do List
//
//  Created by Khalmatov on 30.05.2023.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        NavigationView {
            VStack {
                //            Header
                HeaderView(offSet: 100, title: "Log in", subtitle: "Get things done", angel: 15, background: .pink, weightSubtitle: 30)
                //            Login Form
                Form {
                    TextField("Email adress", text: $email)
                        .textFieldStyle(DefaultTextFieldStyle())
                    SecureField("Password", text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Button {
                        //
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(Color.blue)
                            
                            Text("Log in")
                                .bold()
                                .foregroundColor(Color.white)
                        }
                        
                    }
                }
                VStack {
                    Text("New around here?")
                    NavigationLink("Create an accaunt", destination: RegisterView())
                }
                
                //    Create an Accaunt
                Spacer()
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
