//
//  Constants.swift
//  VillainVanquisher
//
//  Created by Eric Lee on 2023/06/13.
//

import SwiftUI

enum Constants{
    
}

enum ImageAsset: String{
    case sampleImage1 = "test_StoryBook_Image"
    
    var imageName: String{
        return rawValue
    }
    
    var uiimage: UIImage?{
        return UIImage(named: imageName)
    }
    
}

enum ColorAsset: String{
    case mainText = "TextColor"
    case mainShadow = "ShadowColor"
    
    var colorName: String{
        return rawValue
    }
    
    var color: Color{
        return Color(colorName)
    }
}
