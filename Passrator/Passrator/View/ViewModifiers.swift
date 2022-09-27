//
//  ViewModifiers.swift
//  Passrator
//
//  Created by Ali Erdem Kökcik on 28.09.2022.
//

import Foundation
import SwiftUI

extension View{
    func centerH() -> some View{
        HStack{
            Spacer()
            self
            Spacer()
        }
    }
    func addNavigationView(title: String) -> some View{
        NavigationView{
            self
                .navigationTitle(title)
        }
    }
}
