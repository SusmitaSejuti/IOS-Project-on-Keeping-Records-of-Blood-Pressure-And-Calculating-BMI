//
//  UpdatePage.swift
//  HealthIOS
//
//  Created by kuet on 1/12/22.
//

import SwiftUI

struct UpdatePage: View {
    
    @State private var systolic = ""
    @State private var diastolic = ""
    @State private var heartrate = ""
    @State private var wrongSys: Float = 0
    @State private var wrongDias: Float  = 0
    @State private var wrongRate: Float = 0
    @State private var showingUpdatePage = false
    
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.purple
                    .ignoresSafeArea()
                Circle()
                    .scale(1.7)
                    .foregroundColor(.white.opacity(0.10))
                Circle()
                    .scale(1.35)
                    .foregroundColor(.white)

                VStack {
                    Text("Update Your Info")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                    
                    TextField("Systolic", text: $systolic)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongSys))
                        
                    TextField("Diastolic", text: $diastolic)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongDias))
                    
                    TextField("Heart Rate", text: $heartrate)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongRate))
                    
                    Button("Update") {
                        authenticateUser(username: systolic, password: diastolic)
                        }
                    .foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .background(Color.purple)
                    .cornerRadius(50)
                    
                    NavigationLink(destination: Text("Your info has been updated")
                                    , isActive: $showingUpdatePage) {
                        EmptyView()
                    }
                }
            }.navigationBarHidden(true)
        }
    }
    
    func authenticateUser(username: String, password: String) {
        if systolic.isEmpty == false {
            wrongSys = 1
        }
        if diastolic.isEmpty == false{
            wrongDias = 1
        }
        if heartrate.isEmpty == false{
            wrongRate = 1
        }
        
    }
}

struct UpdatePage_Previews: PreviewProvider {
    static var previews: some View {
        UpdatePage()
    }
}
