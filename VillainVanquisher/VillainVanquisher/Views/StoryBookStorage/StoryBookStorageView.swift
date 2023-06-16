//
//  StoryBookStorageView.swift
//  VillainVanquisher
//
//  Created by Eric Lee on 2023/06/13.
//

import SwiftUI

struct StoryBookStorageView: View {
    
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: []) {

                }
            }
            .navigationTitle("보관함")
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Text("편집")
                        .foregroundColor(.pink)
                }
            }
            .toolbar {
                ToolbarItemGroup(placement: .bottomBar) {
                    Spacer()
                    Button {
                        print("편집")
                    } label: {
                        Image(systemName: "square.and.pencil")
                            .foregroundColor(.pink)
                    }
                }
            }
        }
    }
}

struct StoryBookStorageView_Previews: PreviewProvider {
    static var previews: some View {
        StoryBookStorageView()
    }
}
