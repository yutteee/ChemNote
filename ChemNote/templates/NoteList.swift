//
//  NoteList.swift
//  ChemNote
//
//  Created by nakamura yusaku on 2022/12/13.
//

import SwiftUI

struct NoteList: View {
    var body: some View {
        VStack {
            Text("最近使ったノート")
                .font(.system(size: 20, weight: .light))
                .foregroundColor(.blue)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.top, 40)
                .padding(.leading, 60)
            HStack{
                NoteListsRow()
                NoteListsRow()
            }
        }
    }
}

struct NoteList_Previews: PreviewProvider {
    static var previews: some View {
        NoteList()
    }
}
