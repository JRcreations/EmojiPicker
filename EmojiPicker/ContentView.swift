//
//  ContentView.swift
//  EomjiLover
//
//  Created by John Reichel on 1/14/23.
//

import SwiftUI

enum Emoji: String, CaseIterable {
    case 🤨,🧐,🤓,😎
}

struct ContentView: View {
    @State var selection: Emoji = .🤓
    
    var body: some View {
        NavigationView {
            VStack {
                Text(selection.rawValue)
                    .font(.system(size: 150))
                Picker("Select an Emoji", selection: $selection) {
                    ForEach(Emoji.allCases, id: \.self) { emoji in
                        Text(emoji.rawValue)
                    }
                }
                .pickerStyle(.segmented)
            }
            .navigationTitle("Emoji Picker")
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
