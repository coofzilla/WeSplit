//
//  ContentView.swift
//  WeSplit
//
//  Created by Jeric Hernandez on 4/9/23.
//

import SwiftUI

struct ContentView: View {
    static let students = ["Harry", "Ron", "Hermoine", "Ron"]

    @State private var selectedStudent = students[1]

    var body: some View {
        NavigationStack {
            Form {
                Picker("Select Student", selection: $selectedStudent) {
                    ForEach(Self.students, id: \.self) { student in
                        Text(student).tag(student)
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
