//
//  StoryBook.swift
//  VillainVanquisher
//
//  Created by Eric Lee on 2023/06/13.
//

import SwiftUI

struct StoryBook{
    var coverImage: UIImage?
    var title: String
    var date: String
    var contents: [String]
}

extension StoryBook{
    static var sample: StoryBook = StoryBook(coverImage: ImageAsset.sampleImage1.uiimage, title: "귀요미 용사", date: "2023.06.12", contents: ["야", "옹"])
}
