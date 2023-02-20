//
//  ContentView.swift
//  PackageExample
//
//  Created by Honey Shah on 20/02/23.
//

import SwiftUI
import TestPackage

struct ContentView: View {
    @State var showAlert: Bool = false
    var body: some View {
        VStack {
            Button {
                showAlert = true
            } label: {
                Text("Click Me...!")
                    .foregroundColor(.black)
                    .padding(.horizontal, 8)
            }
            .buttonStyle(.bordered)
            .tint(.cyan)
            .buttonBorderShape(.roundedRectangle(radius: 8))
        }
        .padding()
        
        if showAlert {
            SwiftUIView(alertMessage: "This is from Swift Package!!!", buttonText: "Ok") {
                showAlert = false
            }
        }
    }
}
