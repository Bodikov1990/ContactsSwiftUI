//
//  ContentView.swift
//  ContactsSwiftUI
//
//  Created by Kuat Bodikov on 01.03.2022.
//

import SwiftUI

struct ContentView: View {
    
    let perscons = Person.getContactList()

    var body: some View {
        TabView {
            ContactList(persons: perscons)
                .tabItem {
                    Label("Contacts", systemImage: "person.3")
                }
            NumbersScreen(persons: perscons)
                .tabItem {
                    Label("Numbers", systemImage: "person")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
