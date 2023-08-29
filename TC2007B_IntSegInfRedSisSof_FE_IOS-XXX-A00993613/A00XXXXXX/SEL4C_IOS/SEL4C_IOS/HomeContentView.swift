//
//  HomeContentView.swift
//  SEL4C_IOS
//
//  Created by Ivan Santiago Méndez on 22/08/23.
//

import Foundation
import SwiftUI

struct HomeContentView: View {
    var body: some View {
        HomeViewControllerWrapper()
    }
}

struct HomeContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeContentView()
    }
}

// SwiftUI wrapper for the UIKit HomeViewController
struct HomeViewControllerWrapper: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> UINavigationController {
        let homeVC = HomeViewController()
        let navigationController = UINavigationController(rootViewController: homeVC)
        return navigationController
    }
    
    func updateUIViewController(_ uiViewController: UINavigationController, context: Context) {
        // No need for updates in this example
    }
}
