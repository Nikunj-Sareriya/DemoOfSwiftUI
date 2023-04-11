//
//  TextFeildView.swift
//  DemoOfSwiftUI
//
//  Created by Nikunj Sareriya on 11/04/23.
//

import SwiftUI

struct TextFeildView: View {
    
    @State private var input: String = ""
    
    var body: some View {
        Form {
            TextField("Default/plain text field", text: $input)
            TextField("Text field with rounded borders", text: $input)
                .textFieldStyle(RoundedBorderTextFieldStyle())
        }
    }
}

struct TextFeildView_Previews: PreviewProvider {
    static var previews: some View {
        TextFeildView()
    }
}
