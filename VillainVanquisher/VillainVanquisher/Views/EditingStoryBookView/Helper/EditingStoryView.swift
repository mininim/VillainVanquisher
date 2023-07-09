//
//  EditingStoryView.swift
//  VillainVanquisher
//
//  Created by Eric Lee on 2023/06/24.
//

import SwiftUI

struct EditingStoryView: View {
    @Binding var text: String
    
    var body: some View {
        TextEditor(text: $text)
            .padding()
    }
}

struct EditingStoryView_Previews: PreviewProvider {
    static var previews: some View {
        EditingStoryView(text: .constant(StoryBook.sample.contents))
    }
}
