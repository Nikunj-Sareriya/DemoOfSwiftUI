//
//  FormView.swift
//  DemoOfSwiftUI
//
//  Created by Nikunj Sareriya on 11/04/23.
//

import SwiftUI

struct FormView: View {
    
    @State private var date = Date()
    
    var body: some View {
        Form {
            DatePicker(selection: $date, in: ...Date(), displayedComponents: .date) {
                Text("Select a date")
            }
            DatePicker(selection: $date, in: ...Date(), displayedComponents: .hourAndMinute) {
                Text("Select a time")
            }
        }
    }
}

struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        FormView()
    }
}

struct FormView1: View {
    
    @State private var selectedIdx = 0
    @State private var options = ["Option 1", "Option 2", "Option 3"]
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Using hard-coded .tag()")) {
                    Picker(selection: $selectedIdx, label: Text("I'm a Picker in a Form"), content: {
                        Text("Option 1").tag(0)
                        Text("Option 2").tag(1)
                        Text("Option 3").tag(2)
                    })
                }
                Section(header: Text("Using ForEach")) {
                    Picker(selection: $selectedIdx, label: Text("I'm a Picker in a Form")) {
                        ForEach(0 ..< options.count) { index in
                            Text(self.options[index])
                        }
                        //  Can also do:
                        ForEach(0 ..< options.count) {
                            Text(self.options[$0])
                        }
                    }
                }
                Section(header: Text("Segmented Picker Style (iOS 13)")) {
                    Picker(selection: $selectedIdx, label: Text("I'm a Picker in a Form")) {
                        ForEach(0 ..< options.count) {
                            Text(self.options[$0])
                        }
                    }.pickerStyle(SegmentedPickerStyle())
                }
            }
            .navigationBarTitle("NavigationView")
        }
    }
}

struct FormView1_Previews: PreviewProvider {
    static var previews: some View {
        FormView1()
    }
}

struct FormView2: View {
    
    @State private var password: String = ""
    
    var body: some View {
        Form {
            SecureField("Enter password", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
        }
    }
}

struct FormView2_Previews: PreviewProvider {
    static var previews: some View {
        FormView2()
    }
}

struct FormView3: View {
    
    @State private var sliderValue: Double = 5
    
    var body: some View {
        Form {
            Section {
                Slider(value: $sliderValue, in: 0...10, step: 1)
                Text("Slider value: (sliderValue)")
            }
        }
    }
}

struct FormView3_Previews: PreviewProvider {
    static var previews: some View {
        FormView3()
    }
}

struct FormView4: View {
    
    @State private var value: Int = 0
    
    var body: some View {
        Form {
            Stepper("Choose a value", value: $value, in: 0...100)
            Stepper(value: $value, in: 0...100, label: {
                HStack {
                    Image(systemName: "faceid")
                    Text("With Custom Label")
                }
            })
            Stepper("With Custom Callbacks", onIncrement: {
                self.value += 1
                print("Added 1 to value")
            }, onDecrement: {
                self.value -= 1
                print("Subtracted 1 to value")
            })
        }
    }
}

struct FormView4_Previews: PreviewProvider {
    static var previews: some View {
        FormView4()
    }
}

struct FormView5: View {
    
    @State private var areTogglesOn: Bool = false
    
    var body: some View {
        Form {
            Toggle("Toggle with just text", isOn: $areTogglesOn)
            Toggle(isOn: $areTogglesOn) {
                HStack {
                    Image(systemName: "pencil.circle.fill")
                    Text("Toggle with icon")
                }
            }
        }
    }
}

struct FormView5_Previews: PreviewProvider {
    static var previews: some View {
        FormView5()
    }
}
