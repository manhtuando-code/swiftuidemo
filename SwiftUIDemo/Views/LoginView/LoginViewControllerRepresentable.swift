//
//  LoginViewControllerRepresentable.swift
//  SwiftUIDemo
//
//  Created by Do Tuan on 13/05/2022.
//

import UIKit
import SwiftUI

struct LoginViewControllerRepresentation: UIViewControllerRepresentable {
    
    typealias UIViewControllerType = LoginViewController
    
    func makeUIViewController(context: Context) -> LoginViewController {
        let vc = LoginViewController()
        return vc
    }
    
    func updateUIViewController(_ uiViewController: LoginViewController, context: Context) {
        print("Updating")
    }
    
    
}

struct LoginViewControllerPreviews: PreviewProvider {
    static var previews: some View {
        LoginViewControllerRepresentation()
    }
}
