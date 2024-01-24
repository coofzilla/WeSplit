//
//  ContentView.swift
//  WeSplit
//
//  Created by Jeric Hernandez on 4/9/23.
//

import SwiftUI

struct ContentView: View {
    // some return something that conforms to the protocol
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Text("Goodbye, world!")
                }
            }
            .navigationTitle("SwiftUI")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ContentView()
}
