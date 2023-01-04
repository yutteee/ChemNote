//
//  NoteList.swift
//  ChemNote
//
//  Created by nakamura yusaku on 2022/12/13.
//

import SwiftUI

struct NoteList: View {
    let mockNotes : [Note]
    
    var body: some View {
        HStack {
            ForEach(mockNotes) { note in
                NoteListsRow(note: note)
            }
        }
    }
}

struct NoteList_Previews: PreviewProvider {
    static var previews: some View {
        NoteList(mockNotes: [.mock1, .mock2, .mock3])
    }
}
