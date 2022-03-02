//
//  PersonDetails.swift
//  ContactsSwiftUI
//
//  Created by Kuat Bodikov on 02.03.2022.
//

import SwiftUI

struct PersonDetails: View {
    
    let person: Person
    
    var body: some View {
        VStack {
            List() {
                HStack {
                Image(systemName: "person.circle")
                    .resizable()
                    .frame(width: 200, height: 200)
                    .padding()
                    .offset(x: 35, y: 0)
                }
                HStack{
                    Image(systemName: "\(Contacts.phone.rawValue)")
                    Text("\(person.phoneNumber)")
                }
                HStack{
                    Image(systemName: "\(Contacts.email.rawValue)")
                    Text("\(person.email)")
                }
            }
            .navigationTitle("\(person.fullName)")
        }
    }
}

struct PersonDetails_Previews: PreviewProvider {
    static var previews: some View {
        PersonDetails(person: Person(name: "name", surname: "surname", email: "mail", phoneNumber: "number"))
    }
}
