//
//  Folder+mock.swift
//  ChemNote
//
//  Created by nakamura yusaku on 2023/01/04.
//

import Foundation

extension Folder {
    static let folder1 = Folder(id: 1, name: "1年秋学期", content: [Note.mock1, Note.mock2])
    static let folder2 = Folder(id: 2, name: "2年春学期", content: [Note.mock3, Note.mock2, Note.mock1])
}
