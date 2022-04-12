//
//  HomeTutFormView.swift
//  iSpace
//
//  Created by Oluwakemi Onajinrin on 4/7/22.
//

import SwiftUI

struct ColorInvert: ViewModifier {

    @Environment(\.colorScheme) var colorScheme

    func body(content: Content) -> some View {
        Group {
            if colorScheme == .dark {
                content.colorInvert()
            } else {
                content
            }
        }
    }
}

struct RadioButton: View {

    @Environment(\.colorScheme) var colorScheme

    let id: String
    let callback: (String)->()
    let selectedID : String
    let size: CGFloat
    let color: Color
    let textSize: CGFloat

    init(
        _ id: String,
        callback: @escaping (String)->(),
        selectedID: String,
        size: CGFloat = 20,
        color: Color = Color.primary,
        textSize: CGFloat = 14
        ) {
        self.id = id
        self.size = size
        self.color = color
        self.textSize = textSize
        self.selectedID = selectedID
        self.callback = callback
    }

    var body: some View {
        Button(action:{
            self.callback(self.id)
        }) {
            HStack(alignment: .center, spacing: 10) {
                Image(systemName: self.selectedID == self.id ? "largecircle.fill.circle" : "circle")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: self.size, height: self.size)
                    .modifier(ColorInvert())
                Text(id)
                    .font(Font.system(size: textSize))
                Spacer()
            }.foregroundColor(self.color)
        }
        .foregroundColor(self.color)
    }
}

struct RadioButtonGroup: View {

    let items : [String]

    @State var selectedId: String = ""

    let callback: (String) -> ()

    var body: some View {
        VStack {
            ForEach(0..<items.count) { index in
                RadioButton(self.items[index], callback: self.radioGroupCallback, selectedID: self.selectedId)
            }
        }
    }

    func radioGroupCallback(id: String) {
        selectedId = id
        callback(id)
    }
}


struct HomeTutFormView: View {
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var birthdate = Date()
    @State private var shouldSendNewsletter = false
    @State private var numberOfLikes = 1

            var body: some View {
//                ScrollView {
                    Form {
                        Section(header: Text("Home Tutoring")) {
                            Text("First Name").lineLimit(nil)
                            
                        }
                        Section(header: Text("Parent Information ")){
                            
                            TextField("Email", text: $lastName)
                            
                            TextField("Name of Guardian", text: $lastName)
                            
                            TextField("Occupation of Guardian", text: $lastName)

                            
                        }
                        Section(header: Text("Child(ren) Information")){
                            TextField("Name(s) of child(ren)", text: $lastName)
                            
                            TextField("Age(s) of child(ren)", text: $lastName)
                            
                            DatePicker("Birthdate ", selection: $birthdate, displayedComponents: .date)
                            
                        }
                        Section(header: Text("Personal Information")) {
                            TextField("Home Adress", text: $firstName)
                            
                            TextField("Phone number", text: $lastName)
                            
                        }
                        
                        Section(header: Text("Courses Available")){
                            Toggle("Game Development", isOn: $shouldSendNewsletter)
                                .toggleStyle(SwitchToggleStyle(tint: .red))
                            Toggle("Animation", isOn: $shouldSendNewsletter)
                                .toggleStyle(SwitchToggleStyle(tint: .red))
                            Toggle("Web Development", isOn: $shouldSendNewsletter)
                                .toggleStyle(SwitchToggleStyle(tint: .red))
                            Toggle("3D Design", isOn: $shouldSendNewsletter)
                                .toggleStyle(SwitchToggleStyle(tint: .red))
                            Toggle("Physical Computing", isOn: $shouldSendNewsletter)
                                .toggleStyle(SwitchToggleStyle(tint: .red))
                            Toggle("Graphics Design", isOn: $shouldSendNewsletter)
                                .toggleStyle(SwitchToggleStyle(tint: .red))
                        }
                        Section {
                            HStack {
                                        Text("Kid's Level")
                                            .font(Font.headline)
                                            .padding()
                                        RadioButtonGroup(items: ["Beginner", "Intermediate", "Advanced"], selectedId: "Beginner") { selected in
                                            print("Selected is: \(selected)")
                                        }
                                    }.padding()
                        }
                        
                        
                        Section(header: Text("Actions")) {
                            Toggle("Send Newsletter", isOn: $shouldSendNewsletter)
                                .toggleStyle(SwitchToggleStyle(tint: .red))
                            
//                            Stepper("Number of Likes", value: $numberOfLikes, in: 1...100)
//                            Text("This video has \(numberOfLikes) likes")
                            
                            Link("Terms of Service", destination: URL(string: "https://google.com")!)
                        }
                    }
                    .navigationTitle("Account")
                    .toolbar(content: {
                        ToolbarItemGroup(placement: .navigationBarTrailing) {
                            Button {
                                hideKeyboard()
                            } label: {
                                Image(systemName: "keyboard.chevron.compact.down")
                            }
                            
                            Button("Save", action: saveUser)
                        }
                    })
//                }
                .accentColor(.red)
            }
            
            func saveUser() {
                print("User Saved")
            }
        }

struct HomeTutFormView_Previews: PreviewProvider {
    static var previews: some View {
        HomeTutFormView()
    }
}

#if canImport(UIKit)
extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif
