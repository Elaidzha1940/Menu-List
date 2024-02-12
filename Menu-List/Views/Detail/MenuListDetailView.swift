//  /*
//
//  Project: Menu-List
//  File: MenuListDetailView.swift
//  Created by: Elaidzha Shchukin
//  Date: 12.02.2024
//
//  */

import SwiftUI

struct MenuListDetailView: View {
    let menu: MenuListModel
    
    var body: some View {
        VStack {
            Image("steak")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 300, height: 225)
            
            VStack {
                Text(menu.name)
                    .font(.system(size: 25, weight: .semibold, design: .monospaced))
                
                Text(menu.description)
                    .font(.system(size: 17, weight: .bold, design: .monospaced))
                    .multilineTextAlignment(.center)
                    .padding(1)
                
                HStack(spacing: 40) {
                    VStack(spacing: 4) {
                        Text("Calories")
                            .font(.system(size: 12, weight: .bold, design: .monospaced))
                        Text("\(menu.calories)")
                            .font(.system(size: 12, weight: .semibold, design: .monospaced))
                            .foregroundColor(.secondary)
                    }
                    
                    VStack {
                        Text("C arbs")
                            .font(.system(size: 12, weight: .bold, design: .monospaced))
                        Text("\(menu.carbs)")
                            .font(.system(size: 12, weight: .semibold, design: .monospaced))
                            .foregroundColor(.secondary)
                    }
                    
                    VStack {
                        Text("Protein")
                            .font(.system(size: 12, weight: .bold, design: .monospaced))
                        Text("\(menu.protein)")
                            .font(.system(size: 12, weight: .semibold, design: .monospaced))
                            .foregroundColor(.secondary)
                    }
                }
            }
            
            Spacer()
            
            Button(action: {
                
            }, label: {
                Text("Button")
            })
            .padding(.bottom, 30)
        }
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(15)
        .shadow(radius: 40)
    }
}

#Preview {
    MenuListDetailView(menu: MockData.sapmleMenuListModel)
}
