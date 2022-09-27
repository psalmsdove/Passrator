//
//  ContentView.swift
//  Passrator
//
//  Created by Ali Erdem Kökcik on 28.09.2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var vm = ViewModel()
    
    var body: some View {
        VStack {
            Form{
                Section("Options"){
                    Toggle("Symbols", isOn: $vm.containsSymbols)
                        .bold()
                    Toggle("Uppercase", isOn: $vm.containsUppercase)
                        .bold()
                    Stepper("Character count: \(vm.length)", value: $vm.length, in: 6...20)
                        .bold()
                    Button("Generate Password", action: vm.createPassword)
                        .centerH()
                        .fontWeight(/*@START_MENU_TOKEN@*/.medium/*@END_MENU_TOKEN@*/)
                        .foregroundColor(/*@START_MENU_TOKEN@*/Color(hue: 1.0, saturation: 0.829, brightness: 0.692)/*@END_MENU_TOKEN@*/)
                }
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                
                Section("Passwords"){
                    List(vm.passwords){password in
                            HStack{
                                Text("\(password.password)")
                                    .padding()
                                    .textSelection(.enabled)
                                Spacer()
                                Image(systemName: "lock.fill")
                                    .foregroundColor(password.strengthColor)
                        }
                    }
                }
            }
            .addNavigationView(title: "Passrator")
        }

    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
