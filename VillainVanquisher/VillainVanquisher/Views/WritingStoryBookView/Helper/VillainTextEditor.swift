//
//  VillainTextEidtor.swift
//  VillainVanquisher
//
//  Created by Eric Lee on 2023/06/20.
//

import SwiftUI

struct VillainTextEditor: View {
    @Binding var text: String
    
    var body: some View {
        
        VStack(spacing: 0){
            
            HStack(spacing: 0){
                Text("특징")
                    .font(.body)
                    .foregroundColor(Color.primary)
                Spacer()
            }
            
            TextEditor(text: $text)
                .frame(height: 250)
            
        }
        
        
        
    }
}

struct VillainTextEidtor_Previews: PreviewProvider {
    static var previews: some View {
        VillainTextEditor(text: .constant(""))
    }
}
