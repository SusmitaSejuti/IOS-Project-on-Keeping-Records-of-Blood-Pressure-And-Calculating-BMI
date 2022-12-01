//
//  RegistrationPage.swift
//  HealthIOS
//
//  Created by kuet on 1/12/22.
//

import SwiftUI

struct RegistrationPage: View {
    @State private var username = ""
    @State private var password = ""
    @State private var email = ""
    @State private var age = ""
    @State private var height = ""
    @State private var weight = ""
    @State private var wrongUsername: Float = 0
    @State private var wrongPassword: Float  = 0
    @State private var wrongEmail: Float = 0
    @State private var wrongAge: Float = 0
    @State private var wrongHeight: Float = 0
    @State private var wrongWeight: Float = 0
    @State private var showingRegistrationPage = false
    
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.purple
                    .ignoresSafeArea()
                Circle()
                    .scale(1.7)
                    .foregroundColor(.white.opacity(0.10))
                Circle()
                    .scale(1.75)
                    .foregroundColor(.white)

                VStack {
                    Text("Sign Up")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                    
                    TextField("Username", text: $username)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongUsername))
                        
                    TextField("Email Address", text: $email)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongEmail))
                    
                    TextField("Age", text: $age)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongAge))
                    
                    TextField("Height", text: $height)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongHeight))
                    
                    TextField("Weight", text: $weight)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongHeight))
                    
                    SecureField("Password", text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongPassword))
                    
                    Button("Create Account") {
                        authenticateUser(username: username, password: password)
                        }
                    .foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .background(Color.purple)
                    .cornerRadius(50)
                    
                    NavigationLink(destination: Text("You are signed up @\(username)"), isActive: $showingRegistrationPage) {
                        EmptyView()
                    }
                }
            }.navigationBarHidden(true)
        }
    }
    
    func authenticateUser(username: String, password: String) {
        if username.isEmpty == false {
            wrongUsername = 1
        }
        if email.isEmpty == false{
            wrongEmail = 1
        }
        if age.isEmpty == false{
            wrongAge = 1
        }
        if height.isEmpty == false {
            wrongHeight = 1
        }
        if weight.isEmpty == false{
            wrongWeight = 1
        }
        if password.isEmpty == false{
            wrongPassword = 1
        }
        if wrongAge==1 && wrongEmail==1 && wrongUsername==1 && wrongWeight==1 && wrongHeight==1 && wrongPassword==1{
            showingRegistrationPage = true
        }
    }
}

struct RegistrationPage_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationPage()
    }
}
