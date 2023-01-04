//
//  NoteModel.swift
//  ChemNote
//
//  Created by nakamura yusaku on 2022/12/13.
//

import Foundation
import SwiftUI

struct Note: Identifiable {
    var name: String
    var color: Color
    var id: Int
    var isFavorited: Bool
}
