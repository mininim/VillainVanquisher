//
//  MakingStoryBookViewModel.swift
//  VillainVanquisher
//
//  Created by Eric Lee on 2023/06/25.
//

import SwiftUI

class MakingStoryBookViewModel: ObservableObject{
    
    @Published var villainName: String = ""
    @Published var villainCharacter: String = ""
    
    @Published var title: String = ""
    @Published var content: String = ""
    @Published var coverImage: String = ""
    
    @Published var isLoaded: Bool = false
    
    private let openAIService = OpenAIService()
    
    var messages: [Message] = []
    
    func sendMessage(){
        
        let nameAssistant = Message(id: UUID(), role: .assistant, content: "주인공을 괴롭히는 악당의 이름을 말해줘", createAt: Date())
        let nameUserMessage = Message(id: UUID(), role: .user, content: self.villainName, createAt: Date())
        
        let secondAssistant = Message(id: UUID(), role: .assistant, content: "그 악당의 특징에 대해서 설명해줘", createAt: Date())
        let characterMessage = Message(id: UUID(), role: .user, content: self.villainCharacter, createAt: Date())
        
        let defaultSystem = Message(id: UUID(), role: .system, content: "너는 악당의 이름과 특징을 기반으로 행복한 동화책을 작성하는 작가야", createAt: Date())
        
        messages = [nameAssistant, nameUserMessage, secondAssistant, characterMessage, defaultSystem]
        
        Task {
            print(messages[0].content)
            let response = await openAIService.sendMessage(messages: messages)
            guard let receiveOpenAIMessage = response?.choices.first?.message else {
                print("ERROR - No Received Message")
                return
            }
            
            await MainActor.run(body: {
                self.content = receiveOpenAIMessage.content
                self.isLoaded = true
            })
            
        }
        
    }
    
}

struct Message: Decodable{
    let id: UUID
    let role: SenderRole
    let content: String
    let createAt: Date
}

