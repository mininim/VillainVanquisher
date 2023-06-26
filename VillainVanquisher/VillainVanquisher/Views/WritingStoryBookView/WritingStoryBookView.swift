//
//  WritingStoryBookView.swift
//  VillainVanquisher
//
//  Created by Eric Lee on 2023/06/18.
//

import SwiftUI

struct WritingStoryBookView: View {
    @StateObject var viewModel: MakingStoryBookViewModel = MakingStoryBookViewModel()
    
    var body: some View {
        ZStack{
            
            List {
                HStack{
                    Spacer()
                    VillainImageView()
                    Spacer()
                }
                .padding(40)
                
                VillainTextField(name: $viewModel.villainName)
                
                VillainTextEditor(text: $viewModel.villainCharacter)
                
            }
            
            VStack {
                Spacer()
                NavigationLink {
                    EditingStoryBookView(viewModel: self.viewModel)
                } label: {
                    VillainButton(text: "빌런 퇴치하기")
                }
            }
            .padding(.bottom, 40)
        }
        .navigationTitle("빌런 분석")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct WritingStoryBookView_Previews: PreviewProvider {
    static var previews: some View {
        WritingStoryBookView()
    }
}
