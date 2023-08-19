//
//  CharacterBoard_DooApp.swift
//  CharacterBoard-Doo
//
//  Created by Handoo Jeong on 2023/08/18.
//

import SwiftUI

@main
struct CharacterBoard_DooApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(CharacterStore(selectedChar: "", selectedImdex: 0))
        }
    }
}
