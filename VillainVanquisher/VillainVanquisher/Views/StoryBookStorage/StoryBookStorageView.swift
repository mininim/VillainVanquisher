//
//  StoryBookStorageView.swift
//  VillainVanquisher
//
//  Created by Eric Lee on 2023/06/13.
//

import SwiftUI

struct StoryBookStorageView: View {
    
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil)
    ]
    @StateObject var vm: SavedStoryBookViewModel = SavedStoryBookViewModel()
    
    var body: some View {
        NavigationView {
            
            ScrollView {
                LazyVGrid(columns: self.columns, alignment: .center) {
                    ForEach(vm.savedStoryBooks) { storyBookEntity in
                        StoryBookView(storyBook: StoryBook(storyBookEntity: storyBookEntity))
                    }
                }
                .padding(.horizontal)
            }//ScrollView
            .navigationTitle("보관함")
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Button{
                        vm.clearData()
                    }label: {
                        Text("편집")
                            .foregroundColor(.pink)
                    }
                }
            }//Navigationbar
            .toolbar {
                ToolbarItemGroup(placement: .bottomBar) {
                    Spacer()
                    NavigationLink {
                        WritingStoryBookView()
                    } label: {
                        Image(systemName: "square.and.pencil")
                            .foregroundColor(.pink)
                    }
                }
            }//BottomBar
            
        }
    }
}

struct StoryBookStorageView_Previews: PreviewProvider {
    static var previews: some View {
        StoryBookStorageView()
    }
}
