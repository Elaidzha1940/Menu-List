//  /*
//
//  Project: Menu-List
//  File: LoadingView.swift
//  Created by: Elaidzha Shchukin
//  Date: 11.02.2024
//
//  */

import SwiftUI

//MARK: Old way.
//struct ActivityIndicator: UIViewRepresentable {
//    
//    func makeUIView(context: Context) -> UIActivityIndicatorView {
//        let activityIndicatorView = UIActivityIndicatorView(style: .large)
//        activityIndicatorView.color = UIColor.brandPrimaryColor
//        activityIndicatorView.startAnimating()
//        return activityIndicatorView
//    }
//    
//    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {}
//}

//MARK: New way.
struct LoadingView: View {
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea()
            
            ProgressView()
                .progressViewStyle(CircularProgressViewStyle(tint: .brandPrimary))
                .scaleEffect(1.5)
        }
    }
}
