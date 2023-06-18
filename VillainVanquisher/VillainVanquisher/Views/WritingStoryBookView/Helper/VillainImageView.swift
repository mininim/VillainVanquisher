//
//  VillianImageView.swift
//  VillainVanquisher
//
//  Created by Eric Lee on 2023/06/18.
//

import SwiftUI

struct VillainImageView: View {
    var body: some View {
        Image(ImageAsset.villianImage.imageName)
            .resizable()
            .scaledToFit()
            .frame(width: 108, height: 103)
    }
}

struct VillainImageView_Previews: PreviewProvider {
    static var previews: some View {
        VillainImageView()
    }
}
