//
//  PersonRow.swift
//  ContactsSwiftUI
//
//  Created by Kuat Bodikov on 02.03.2022.
//

import SwiftUI

struct PersonRow: View {
    
    let person: Person
    
    var body: some View {
        
        HStack {
            Image(systemName: "person.circle")
                .resizable()
                .frame(width: 30, height: 30)
            Text("\(person.fullName)")
                .font(.headline)
            
        }
    }
}

struct PersonRow_Previews: PreviewProvider {
    static var previews: some View {
        PersonRow(person: Person(name: "name", surname: "surname", email: "mail", phoneNumber: "number"))
    }
}
