//
//  ImageView.swift
//  DemoOfSwiftUI
//
//  Created by Nikunj Sareriya on 10/04/23.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            Image(systemName: "message.circle.fill")
                .font(.largeTitle)
                .foregroundColor(.blue)

        }
        .padding()
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}

struct ImageView1: View {
    var body: some View {
        VStack(spacing: 20) {
            Image("Bangkok") // unsplash.com/photos/g5Uh7nP60FA
                .resizable()
                .frame(width: 350, height:100) // contain element within a view of 350x100
            Image("Bangkok")
                .resizable()
                .frame(width: 200, height:100)
            Image("SwiftUI") // developer.apple.com/assets/elements/icons/swiftui/swiftui-96x96.png
                .resizable(resizingMode: .tile) // default: .stretch
                .frame(width: 200, height: 100)
            // tile image offsets (... but why would you ever do this?)
            Image("SwiftUI")
                .resizable(capInsets: EdgeInsets(top: 50, leading: 0, bottom: 0, trailing: 0), resizingMode: .tile)
                .frame(width: 350, height: 200)
        }
    }
}

struct ImageView1_Previews: PreviewProvider {
    static var previews: some View {
        ImageView1()
    }
}

struct ImageView2: View {
    var body: some View {
        VStack(spacing: 20) {
            Image("Bangkok")
                .resizable()
                .aspectRatio(contentMode: .fill) // .scaledToFill()
                .frame(width: 200, height: 200)
                .border(Color.red, width: 3)
            Image("Bangkok")
                .resizable()
                .aspectRatio(contentMode: .fit) // .scaledToFit()
                .frame(width: 200, height: 200)
                .border(Color.red, width: 3)
            Image("Bangkok")
                .resizable()
                .aspectRatio(0.25, contentMode: .fit)
                .frame(width: 200, height: 200)
                .border(Color.red, width: 3)
            HStack {
                Image("Bangkok")
                    .resizable()
                    .scaleEffect(2)
                    .frame(width: 200, height: 200)
                Image("Bangkok")
                    .resizable()
                    .rotationEffect(.degrees(100))
            }
        }
    }
}

struct ImageView2_Previews: PreviewProvider {
    static var previews: some View {
        ImageView2()
    }
}

struct ImageView3: View {
    var body: some View {
        VStack(spacing: 20) {
            Image("Bangkok")
                .resizable()
                .scaleEffect(2)
                .frame(width: 200, height: 200)
        }
    }
}

struct ImageView3_Previews: PreviewProvider {
    static var previews: some View {
        ImageView3()
    }
}

struct ImageView4: View {
    var body: some View {
        VStack(spacing: 20) {
            Image("Bangkok")
                .resizable()
                .rotationEffect(.degrees(20))
        }
    }
}

struct ImageView4_Previews: PreviewProvider {
    static var previews: some View {
        ImageView4()
    }
}


