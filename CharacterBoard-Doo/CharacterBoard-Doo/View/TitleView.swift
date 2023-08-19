//
//  TitleView.swift
//  CharacterBoard-Doo
//
//  Created by Handoo Jeong on 2023/08/19.
//

import SwiftUI

struct TitleView: View {
    var characterSelectView: CharacterSelectView
    
    var body: some View {
//        Color.purple
        HStack {
            Image(systemName: "ellipsis.message.fill")
                
        }
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(characterSelectView: CharacterSelectView())
    }
}
