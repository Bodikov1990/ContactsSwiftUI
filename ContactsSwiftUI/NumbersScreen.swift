//
//  NumbersScreen.swift
//  ContactsSwiftUI
//
//  Created by Kuat Bodikov on 01.03.2022.
//

import SwiftUI

struct NumbersScreen: View {
    
    let persons: [Person]
    
    var body: some View {
        NavigationView {
                List(persons) {person in
                    Section(header: Text(person.fullName).font(.headline)) {
                        HStack{
                            Image(systemName: "\(Contacts.phone.rawValue)")
                            Text("\(person.phoneNumber)")
                        }
                        HStack{
                            Image(systemName: "\(Contacts.email.rawValue)")
                            Text("\(person.email)")
                        }
                            .navigationTitle("Numbers")
                }
            }
        }
    }
}

struct NumbersScreen_Previews: PreviewProvider {
    static var previews: some View {
        NumbersScreen(persons: Person.getContactList())
    }
}
