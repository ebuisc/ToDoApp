//
//  RegisterView.swift
//  ToDoApp
//
//  Created by Ebubekir Talha İşçimen on 26.09.2023.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewViewModel()
    var body: some View {
        VStack {
            // Header
            HeaderView(title: "Register", subtitle: "Start organizing todos", angle: -15, background: .orange)
            Form {
                TextField("Full Name", text: $viewModel.name)
                TextField("Email Adress", text: $viewModel.email)
                    .autocapitalization(.none)
                    .keyboardType(.emailAddress)
                SecureField("Password", text: $viewModel.password)
                TLButton(title: "Create Account", background: .green)
                {
                    viewModel.register()
                }
            }
            .offset(y: -50)
            Spacer()
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
