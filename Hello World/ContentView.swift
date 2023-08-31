//
//  ContentView.swift
//  Hello World
//
//  Created by Sam Chen on 8/30/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var hobby1: String = ""
    @State var hobby2: String = ""
    @State var hobby3: String = ""
    @State var hobby4: String = ""
    @State var hideTextField: Bool = false
    var body: some View {
        VStack {
            Text("Sam Chen")
                .font(.largeTitle)
                .fontWeight(.thin)
                .foregroundColor(Color.black)
            Image("kitty")
                .resizable()
                .frame(width: 300,height: 200)
                .clipShape(Circle())
            Link(destination: URL(string: "https://www.homedepot.com")!) {
                Text("Home")
            }
            List {
                Text("1. \(hobby1)")
                Text("2. \(hobby2)")
                Text("3. \(hobby3)")
                Text("4. \(hobby4)")
            }

            Toggle("Edit Hobbies", isOn: $hideTextField)
                .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
                    //Spacer(minLength: 70)
            if hideTextField {
                TextField("Enter Hobby Here", text:$hobby1)
                    .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 0))
                TextField("Enter Hobby Here", text:$hobby2)
                    .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 0))
                TextField("Enter Hobby Here", text:$hobby3)
                    .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 0))
                TextField("Enter Hobby Here", text:$hobby4)
                    .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 0))
                    }
                }
            }
            
}


struct ContentView_Previews:PreviewProvider{
    static var previews: some View {
        ContentView()
    }
}
