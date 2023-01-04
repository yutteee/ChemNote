//
//  NoteList.swift
//  ChemNote
//
//  Created by nakamura yusaku on 2022/12/13.
//

import SwiftUI

struct NoteList: View {
    let mockNotes:[Note] = [.mock1, .mock2, .mock3]
    
    var body: some View {
        NavigationView {
            List(mockNotes) { note in
                NavigationLink(destination:MyViewControllerRepresentable()){
                    NoteListsRow(note: note)
                }
            }
            .navigationTitle("最近使ったノート")
        }
    }
}

struct NoteList_Previews: PreviewProvider {
    static var previews: some View {
        NoteList()
    }
}
