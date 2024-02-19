//  /*
//
//  Project: Menu-List
//  File: MenuListCell.swift
//  Created by: Elaidzha Shchukin
//  Date: 07.02.2024
//
//  */

import SwiftUI

struct MenuListCell: View {
    let menu: MenuListModel
    
    var body: some View {
        
        HStack {
            //MARK: Before AsyncImage
            //            MenuListRemoteImage(urlString: menu.imageURL)
            //                .scaledToFit()
            //                .frame(width: 130, height: 90)
            //                .cornerRadius(15)
            
            AsyncImage(url: URL(string: menu.imageURL)) { image in
                image
                    .resizable()
                    .modifier(StandardImage())
            } placeholder: {
                Image("dish-placeholder")
                    .resizable()
                    .modifier(StandardImage())
            }
            
            VStack(alignment: .leading, spacing: 3) {
                Text(menu.name)
                    .font(.system(size: 25, weight: .semibold, design: .monospaced))
                
                Text("$\(menu.price, specifier: "%.2f")")
                    .font(.system(size: 15, weight: .semibold, design: .monospaced))
                    .foregroundColor(.secondary)
            }
            .padding(.leading)
        }
    }
}

#Preview {
    MenuListCell(menu: MockData.sapmleMenuListModel )
}
