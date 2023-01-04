//
//  NoteLists.swift
//  ChemNote
//
//  Created by nakamura yusaku on 2022/12/11.
//

import SwiftUI

struct NoteLists: View {
    let mockFolder: [Folder] = [.folder1, .folder2]
    
    var body: some View {
        NavigationView {
            List(mockFolder) { folder in
                NavigationLink(destination:NoteList(mockNotes: folder.content)){
                    Text(folder.name)
                }
            }
            .navigationTitle("フォルダ")
            NoteList(mockNotes: [.mock1, .mock2, .mock3])
        }
        .padding(0.5)
    }
}

struct NoteLists_Previews: PreviewProvider {
    static var previews: some View {
        NoteLists()
    }
}
