//
//  ContentView.swift
//  WeSplit
//
//  Created by Jeric Hernandez on 4/9/23.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""

    var body: some View {
        TextField("Enter Name:", text: $name)
    }
}

#Preview {
    ContentView()
}
