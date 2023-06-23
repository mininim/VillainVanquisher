//
//  VillainTextField.swift
//  VillainVanquisher
//
//  Created by Eric Lee on 2023/06/23.
//

import SwiftUI

struct VillainTextField: View {
    @State var name: String = ""
    
    var body: some View {
        HStack(spacing: 0){
            
            Text("빌런 이름")
                .font(.body)
                .foregroundColor(Color.primary)
                .frame(width: 100, alignment: .leading)
            
            TextField("이름을 입력하세요", text: $name)
            
            if !name.isEmpty{
                Button {
                    self.name = ""
                } label: {
                    Image(systemName: "x.circle.fill")
                        .foregroundColor(.secondary)
                }
            }
            
        }
        
    }
}

struct VillainTextField_Previews: PreviewProvider {
    static var previews: some View {
        VillainTextField()
    }
}
