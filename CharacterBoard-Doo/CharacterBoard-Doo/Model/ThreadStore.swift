//
//  ThreadStore.swift
//  CharacterBoard-Doo
//
//  Created by Handoo Jeong on 2023/08/18.
//

import Foundation

class ThreadStore: ObservableObject {
    @Published var threadList: [Thread] = []
    
    func addThread(addTitle: String, addContent: String) {
        let addThread: Thread = Thread(title: addTitle, content: addContent, numberOfLike: 0, numberOfReply: 0)
        
        threadList.insert(addThread, at: 0)
    }
}
