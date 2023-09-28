//
//  LoginView.swift
//  ToDoApp
//
//  Created by Ebubekir Talha İşçimen on 26.09.2023.
//

import SwiftUI

struct LoginView: View {

    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                // Header
                HeaderView(title: "To Do List", subtitle: "Get things done", angle: 15, background: .pink)
                
                // Login form
                Form {
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundColor(.red)
                            
                    }
                    TextField("Email Adress", text: $viewModel.email)
                        .autocapitalization(.none)
                        .keyboardType(.emailAddress)
                    SecureField("Password", text: $viewModel.password)
                    TLButton(title: "Log In", background: .pink)
                    {
                        viewModel.login()
                    }
                }
                .offset(y: -50)
                
                // Create account
                VStack {
                    Text("New arround here?")
                        .fontWeight(.medium)
                    NavigationLink("Create An Account", destination: RegisterView())
                        .foregroundColor(.pink)
                        .fontWeight(.semibold)
                }
                .padding(.bottom, 20)
                
                Spacer()
            }
        }
    }
    
    struct LoginView_Previews: PreviewProvider {
        static var previews: some View {
            LoginView()
        }
    }
}
