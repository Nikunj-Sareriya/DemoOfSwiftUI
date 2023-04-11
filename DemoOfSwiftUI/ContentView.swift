//
//  ContentView.swift
//  DemoOfSwiftUI
//
//  Created by Nikunj Sareriya on 10/04/23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        VStack {
            Text("Welcome to SwiftUI.").bold().padding([.vertical]).font(.largeTitle)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
