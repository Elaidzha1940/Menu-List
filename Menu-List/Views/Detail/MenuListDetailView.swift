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
    @Binding var isShowingDetail: Bool
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        VStack {
            MenuListRemoteImage(urlString: menu.imageURL)
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
                    NutritionInfo(title: "Calories", value: menu.calories)
                    NutritionInfo(title: "Carbs", value: menu.carbs)
                    NutritionInfo(title: "Protein", value: menu.protein)
                }
            }
            
            Spacer()
            
            Button(action: {
                order.add(menu)
                isShowingDetail = false
            }, label: {
               MLButton(title: "$\(menu.price, specifier: "%.2f") - Add to Order")
                //Text("$\(menu.price, specifier: "%.2f") - Add to Order")
            })
            //.modifier(StandardButton())
            //.standardButton()
            .padding(.bottom, 25)
        }
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(15)
        .shadow(radius: 40)
        .overlay(Button(action: {
            isShowingDetail = false
        }, label: {
          XDissmissButton()
        }), alignment: .topTrailing)
    }
}

#Preview {
    MenuListDetailView(menu: MockData.sapmleMenuListModel, isShowingDetail: .constant(true))
}

struct NutritionInfo: View {
    let title: String
    let value: Int
    
    var body: some View {
        VStack(spacing: 4) {
            Text(title)
                .font(.system(size: 12, weight: .bold, design: .monospaced))
            Text("\(value)")
                .font(.system(size: 12, weight: .semibold, design: .monospaced))
                .foregroundColor(.secondary)
        }
    }
}
