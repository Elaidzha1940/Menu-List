//  /*
//
//  Project: Menu-List
//  File: XDissmissButton.swift
//  Created by: Elaidzha Shchukin
//  Date: 13.02.2024
//
//  */

import SwiftUI

struct XDissmissButton: View {
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 30, height: 30)
                .foregroundColor(.white)
                .opacity(0.6)
            Image(systemName: "xmark")
                .imageScale(.small)
                .frame(width: 40, height: 40)
                .foregroundColor(.black)
        }
    }
}

#Preview {
    XDissmissButton()
}
