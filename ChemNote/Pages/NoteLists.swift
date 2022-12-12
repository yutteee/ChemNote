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
            HStack{
                Image(systemName: "books.vertical")
                    .font(.system(size: 40, weight: .light))
                    .padding(10)
                Text("一覧")
                    .font(.system(size: 30, weight: .light))
                    .padding(10)
            }
            Text("最近使ったノート")
                .font(.system(size: 20, weight: .light))
                .foregroundColor(.blue)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.top, 40)
                .padding(.leading, 60)
            HStack{
                VStack{
                    Image(systemName: "doc.plaintext.fill")
                        .padding(10)
                        .font(.system(size: 120, weight: .ultraLight))
                        .foregroundColor(.yellow)
                    Text("有機化学3")
                }
                VStack{
                    Image(systemName: "doc.plaintext.fill")
                        .padding(10)
                        .font(.system(size: 120, weight: .ultraLight))
                        .foregroundColor(.blue)
                    Text("有機化学3")
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
        }
        .navigationTitle("a")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct NoteLists_Previews: PreviewProvider {
    static var previews: some View {
        NoteLists()
    }
}
