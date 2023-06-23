//
//  VillainButton.swift
//  VillainVanquisher
//
//  Created by Eric Lee on 2023/06/23.
//

import SwiftUI

struct VillainButton: View {
    var text: String = ""
    
    init(text: String) {
        self.text = text
    }
    
    var body: some View {
        HStack(alignment: .center, spacing: 4) {
            Text("빌런 퇴치하기")
                .font(.body.bold())
                .foregroundColor(ColorAsset.buttonText.color)
        }
        .padding(.horizontal, 20)
        .padding(.vertical, 14)
        .frame(width: 308, alignment: .center)
        .background(Color.pink)
        .cornerRadius(12)
    }
}

struct VillainButton_Previews: PreviewProvider {
    static var previews: some View {
        VillainButton(text: "빌런 퇴치하기")
    }
}
