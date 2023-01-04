//
//  FolderModel.swift
//  ChemNote
//
//  Created by nakamura yusaku on 2023/01/04.
//

import Foundation

struct Folder: Identifiable {
    var id: Int
    var name: String
    var content: [Note]
}
