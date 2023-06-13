//
//  StoryBookView.swift
//  VillainVanquisher
//
//  Created by Eric Lee on 2023/06/13.
//

import SwiftUI

struct StoryBookView: View {
    var storyBook: StoryBook
    
    var body: some View {
        VStack(spacing: 0){
            
            if let image = storyBook.coverImage{
                Image(uiImage: image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 131, height: 194)
                    .clipped()
                    .shadow(color: ColorAsset.mainShadow.color, radius: 4, y: 4)
            }else{
                Rectangle()
                    .foregroundColor(.pink)
                    .frame(width: 131, height: 194)
            }
            
            HStack{
                Text(storyBook.title)
                    .font(.body)
                    .fontWeight(.semibold)
                    .lineLimit(1)
                    .truncationMode(.tail)
                Spacer()
            }
            .padding(.top, 7)
            
            HStack{
                Text(storyBook.date)
                    .font(.caption)
                .fontWeight(.regular)
                Spacer()
            }
            
        }
        .frame(width: 131)
    }
}

struct StoryBookView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            StoryBookView(storyBook: StoryBook.sample)
            StoryBookView(storyBook: StoryBook.sample).preferredColorScheme(.dark)
        }
    }
}
