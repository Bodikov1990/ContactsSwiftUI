//
//  ContactList.swift
//  ContactsSwiftUI
//
//  Created by Kuat Bodikov on 01.03.2022.
//

import SwiftUI

struct ContactList: View {
    
    let persons: [Person]
    
    var body: some View {
        NavigationView {
            List(persons) {person in
                NavigationLink(destination: PersonDetails(person: person)) {
                    PersonRow(person: person)
                        .navigationTitle("Persons")
                }
            }
        }
    }
}

struct ContactList_Previews: PreviewProvider {
    static var previews: some View {
        ContactList(persons: Person.getContactList())
    }
}
