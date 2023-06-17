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
    var contents: String
    
    init(coverImage: UIImage? = nil, title: String, date: String, contents: String) {
        self.coverImage = coverImage
        self.title = title
        self.date = date
        self.contents = contents
    }
    
    init(storyBookEntity: StoryBookEntity){
        self.title = storyBookEntity.title ?? "no title"
        self.date = storyBookEntity.date ?? "no date"
        self.contents = storyBookEntity.contents ?? "no contents"
    }
    
}

extension StoryBook{
    static var sample: StoryBook = StoryBook(coverImage: ImageAsset.sampleImage1.uiimage, title: "귀요미 용사", date: "2023.06.12", contents: "야옹")
}
