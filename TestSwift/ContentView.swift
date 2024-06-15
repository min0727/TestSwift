//
//  ContentView.swift
//  TestSwift
//
//  Created by 松崎勝治 on 2024/06/05.
//

import SwiftUI

struct Human: Identifiable {
    var id = UUID()
    var name: String
    var age: Int
}

struct ContentView: View {
    @State private var humans = [
        Human(name: "Alice", age: 20),
        Human(name: "Bob", age: 30),
        Human(name: "Charlie", age: 40),
    ]
    var body: some View {
        VStack {
            List {
                ForEach(humans) { human in
                    Text("\(human.name) (\(human.age))")
                }
            }
            Button("Add") {
                humans.append(Human(name: "Dave", age: 50))
            }
        .padding()
    }
}
}

#Preview {
    ContentView()
}
