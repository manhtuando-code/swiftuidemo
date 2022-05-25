//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by Do Tuan on 11/05/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink("Login", destination: LoginViewControllerRepresentation())
            }
            .navigationTitle("SwiftUI view")
            .navigationBarTitleDisplayMode(.inline)
            .background(Color(.systemBackground))
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
