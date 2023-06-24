//
//  LoadingEditingView.swift
//  VillainVanquisher
//
//  Created by Eric Lee on 2023/06/24.
//

import SwiftUI

struct LoadingEditingView: View {
    
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(ColorAsset.buttonText.color)
            
            Image(systemName: "pencil.and.outline")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
        }
    }
    
}

struct LoadingEditingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingEditingView()
    }
}
