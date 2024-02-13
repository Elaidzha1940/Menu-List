//  /*
//
//  Project: Menu-List
//  File: AccountView.swift
//  Created by: Elaidzha Shchukin
//  Date: 07.02.2024
//
//  */

import SwiftUI

struct AccountView: View {
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var email = ""
    @State private var birthdate = Date()
    @State private var extraNapkins = false
    @State private var frequentRefills = false
    
    var body: some View {
        
        NavigationView {
            Form {
                Section(header: Text("Personal info")) {
                    TextField("First Name", text: $firstName)
                    TextField("Last Name", text: $lastName)
                    TextField("Email", text: $email)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                    
                    DatePicker("Birthday", selection: $birthdate, displayedComponents: .date)
                        .accentColor(.brandPrimaryColor)

                    Button(action: {
                        //action
                    }, label: {
                        Text("Save changes")
                    })
                }
                
                Section(header: Text("Requests")) {
                    Toggle("Extra Napkins", isOn: $extraNapkins)
                    Toggle("Frequent Refills", isOn: $frequentRefills)
                }
                .toggleStyle(SwitchToggleStyle(tint: .brandPrimaryColor))
            }
            .navigationTitle("Account")
        }
    }
}

#Preview {
    AccountView()
}
