//
//  NoteLists.swift
//  ChemNote
//
//  Created by nakamura yusaku on 2022/12/11.
//

import SwiftUI

struct NoteLists: View {
    var body: some View {
        ScrollView {
            NoteListsHeader()
            NoteList()
        }
    }
}

struct NoteLists_Previews: PreviewProvider {
    static var previews: some View {
        NoteLists()
    }
}
