//
//  EditingStoryBookView.swift
//  VillainVanquisher
//
//  Created by Eric Lee on 2023/06/24.
//

import SwiftUI

struct EditingStoryBookView: View {
    @State var isLoaded: Bool = false
    
    var body: some View {
        ZStack{
            
            LoadingEditingView()
                .onTapGesture {
                    isLoaded.toggle()
                }
            
            if isLoaded{
                EditingStoryView()
                    .transition(.opacity.animation(.easeIn))
            }
            
        }
        .navigationTitle(isLoaded ? "편집" : "빌런 참교육 중")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct EditingStoryBookView_Previews: PreviewProvider {
    static var previews: some View {
        EditingStoryBookView()
    }
}
