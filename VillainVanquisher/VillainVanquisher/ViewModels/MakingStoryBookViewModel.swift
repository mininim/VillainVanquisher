//
//  MakingStoryBookViewModel.swift
//  VillainVanquisher
//
//  Created by Eric Lee on 2023/06/25.
//

import SwiftUI

class MakingStoryBookViewModel: ObservableObject{
    
    @Published var villainName: String = ""
    @Published var villainCharacter: String = ""
    
    @Published var title: String = ""
    @Published var content: String = ""
    @Published var coverImage: String = ""
    
}

