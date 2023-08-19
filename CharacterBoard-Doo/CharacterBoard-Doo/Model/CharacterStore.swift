//
//  CharacterStore.swift
//  CharacterBoard-Doo
//
//  Created by Handoo Jeong on 2023/08/18.
//

import Foundation

class CharacterStore: ObservableObject {
    @Published var id: String = UUID().uuidString
    @Published var selectedChar: String
    @Published var selectedImdex: Int
    
    let charImg: [String] = ["Darius", "Garen", "Jax"]
    
    init(selectedChar: String, selectedImdex: Int) {
//        self.id = id
        self.selectedChar = selectedChar
        self.selectedImdex = selectedImdex
    }
}
