//
//  TextView.swift
//  DemoOfSwiftUI
//
//  Created by Nikunj Sareriya on 10/04/23.
//

import SwiftUI

struct TextView: View {
    var body: some View {
        VStack(alignment: .trailing, spacing: 10) {
            Text("Text.font()")
                .bold()
                .padding([.vertical])

            Text(".largeTitle")
                .font(.largeTitle)

            Text(".title")
                .font(.title)

            Text(".headline")
                .font(.headline)

            Text(".subheadline")
                .font(.subheadline)

            Text(".body")
                .font(.body)

            Text(".callout")
                .font(.callout)

            Text(".caption")
                .font(.caption)

            Text(".footnote")
                .font(.footnote)
        }.font(.title)
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
    }
}

struct TextView1: View {
    var body: some View {
        VStack(alignment: .trailing, spacing: 10) {
            Text("Text Decoration Modifiers")
                .padding([.vertical])

            Text(".bold()")
                .bold()

            Text(".italic()")
                .italic()

            Text(".underline()")
                .underline()

            Text(".underline(color: .red)")
                .underline(color: .red)

            Text(".strikethrough()")
                .strikethrough()

            Text(".strikethrough(false)")
                .strikethrough(false)
        }.font(.title)
    }
}

struct TextView1_Previews: PreviewProvider {
    static var previews: some View {
        TextView1()
    }
}

struct TextView2: View {
    var body: some View {
        VStack(alignment: .trailing, spacing: 10) {
            Text("Text.fontWeight()")
                .padding([.vertical])

            Text(".black")
                .fontWeight(.black)

            Text(".heavy")
                .fontWeight(.heavy)

            Text(".semibold")
                .fontWeight(.semibold)

            Text(".medium")
                .fontWeight(.medium)

            Text(".regular")
                .fontWeight(.regular)

            Text(".thin")
                .fontWeight(.thin)

            Text(".ultralight")
                .fontWeight(.ultraLight)
        }.font(.title)
    }
}

struct TextView2_Previews: PreviewProvider {
    static var previews: some View {
        TextView2()
    }
}

struct TextView3: View {
    var body: some View {
        VStack(alignment: .trailing, spacing: 10) {
            Text("Text.baselineOffset()")
                .bold()
                .padding([.vertical])

            Text(".baselineOffset(50.5)")
                .baselineOffset(50)
                .border(Color.red, width: 3)

            Text(".baselineOffset(-50)")
                .baselineOffset(-50)
                .border(Color.red, width: 3)
        }.font(.title)
    }
}

struct TextView3_Previews: PreviewProvider {
    static var previews: some View {
        TextView3()
    }
}

struct TextView4: View {
    var body: some View {
        VStack(alignment: .trailing, spacing: 10) {
            Text("Text.baselineOffset()")
                .bold()
                .padding([.vertical])

            Text("No Tracking")

            Text(".tracking(1)")
                .tracking(1)

            Text(".tracking(3)")
                .tracking(3)

            Text(".tracking(-2.5)")
                .tracking(-2.5)
        }.font(.title)
    }
}

struct TextView4_Previews: PreviewProvider {
    static var previews: some View {
        TextView4()
    }
}

struct TextView5: View {
    var body: some View {
        VStack(alignment: .trailing, spacing: 10) {
            Text("Text.kerning()")
                .bold()
                .padding([.vertical])

            Text("No Kerning")

            Text(".kerning(1)")
                .kerning(1)

            Text(".kerning(3)")
                .kerning(3)

            Text(".kerning(-2.5)")
                .kerning(-2.5)
        }.font(.title)
    }
}

struct TextView5_Previews: PreviewProvider {
    static var previews: some View {
        TextView5()
    }
}

struct TextView6: View {
    var body: some View {
        VStack(spacing: 60) {
            VStack(spacing: 15) {
                Text("I have some spacing between here").border(Color.red)
                Text("and here").border(Color.red)
            }
            .padding()
            .border(Color.yellow, width: 3)
            HStack() {
                Text("I am").border(Color.red)
                Text("centered horizontally").border(Color.red)
                Text("in an").border(Color.red)
                Text("HStack").border(Color.red)
            }
            .padding()
            .border(Color.yellow, width: 3)
            VStack(alignment: .leading) {
                Text("I am aligned").border(Color.red)
                Text("to the left within this VStack").border(Color.red)
            }
            .padding()
            .border(Color.yellow, width: 3)
            VStack(alignment: .trailing) {
                Text("I am aligned").border(Color.red)
                Text("to the right within this VStack").border(Color.red)
            }.padding().border(Color.yellow, width: 3)
        }.font(.headline).padding().border(Color.blue, width: 3)
    }
}

struct TextView6_Previews: PreviewProvider {
    static var previews: some View {
        TextView6()
    }
}

struct TextView7: View {
    var body: some View {
        VStack() {
            Text("Above the line")
            Divider()
            Text("Below the line")
        }
    }
}

struct TextView7_Previews: PreviewProvider {
    static var previews: some View {
        TextView7()
    }
}

struct TextView8: View {
    var body: some View {
        VStack(spacing: 60) {
            VStack {
                Text("Above Spacer()")
                    .padding()
                Spacer()
                Text("Below Spacer()")
            }
            .padding()
            .border(Color.red, width: 3)
            HStack() {
                Text("Left of Spacer()")
                Spacer()
                Text("Right of Spacer()")
            }
            .padding()
            .border(Color.red, width: 3)
        }
    }
}

struct TextView8_Previews: PreviewProvider {
    static var previews: some View {
        TextView8()
    }
}

struct TextView9: View {
    var body: some View {
        VStack {
            ZStack {
                Text("Red")
                    .frame(width: 200, height: 200)
                    .background(Color.red)
                Text("Blue")
                    .frame(width: 100, height: 100)
                    .background(Color.blue)
                Text("Yellow")
                    .frame(width: 50, height: 50)
                    .background(Color.yellow)
            }
            Spacer()
            ZStack(alignment: .topLeading) {
                Text("Red")
                    .frame(width: 200, height: 200)
                    .background(Color.red)
                Text("Blue")
                    .frame(width: 100, height: 100)
                    .background(Color.blue)
                Text("Yellow")
                    .frame(width: 50, height: 50)
                    .background(Color.yellow)
            }
            Spacer()
            ZStack {
                Text("Red")
                    .frame(width: 200, height: 200)
                    .background(Color.red)
                    .zIndex(0)
                Text("Blue")
                    .frame(width: 100, height: 100)
                    .background(Color.blue)
                    .zIndex(2)
                Text("Yellow")
                    .frame(width: 50, height: 50)
                    .background(Color.yellow)
                    .zIndex(1)
                    .offset(x: 50, y: 50)
            }
        }
    }
}

struct TextView9_Previews: PreviewProvider {
    static var previews: some View {
        TextView9()
    }
}
