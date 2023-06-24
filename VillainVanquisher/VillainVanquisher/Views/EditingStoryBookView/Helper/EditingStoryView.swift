//
//  EditingStoryView.swift
//  VillainVanquisher
//
//  Created by Eric Lee on 2023/06/24.
//

import SwiftUI

struct EditingStoryView: View {
    @State var text: String = StoryBook.sample.contents
    
    var body: some View {
        TextEditor(text: $text)
            .padding()
    }
}

struct EditingStoryView_Previews: PreviewProvider {
    static var previews: some View {
        EditingStoryView()
    }
}
