// Swift toolchain version 5.0
// Running macOS version 14.5
// Created on 5/23/24.
//
// Author: Kieran Brown
//

import Foundation

struct Model: Codable, Identifiable {
    var albumId: Int
    var id: Int
    var title: String
    var url: URL
    var thumbnailURL: URL
}
