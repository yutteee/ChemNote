//
//  NoteListsRow.swift
//  ChemNote
//
//  Created by nakamura yusaku on 2022/12/12.
//

import SwiftUI

struct NoteListsRow: View {
    let note : Note
    
    var body: some View {
        VStack{
            Image(systemName: "doc.plaintext.fill")
                .padding(10)
                .font(.system(size: 120, weight: .ultraLight))
                .foregroundColor(note.color)
            Text(note.name)
        }
    }
}

struct NoteListsRow_Previews: PreviewProvider {
    static var previews: some View {
        NoteListsRow(note: .mock1)
    }
}
