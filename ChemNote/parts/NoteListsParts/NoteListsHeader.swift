//
//  NoteListsHeader.swift
//  ChemNote
//
//  Created by nakamura yusaku on 2022/12/12.
//

import SwiftUI

struct NoteListsHeader: View {
    var body: some View {
        HStack{
            Image(systemName: "books.vertical")
                .font(.system(size: 40, weight: .light))
                .padding(10)
            Text("一覧")
                .font(.system(size: 30, weight: .light))
                .padding(10)
        }
    }
}

struct NoteListsHeader_Previews: PreviewProvider {
    static var previews: some View {
        NoteListsHeader()
    }
}
