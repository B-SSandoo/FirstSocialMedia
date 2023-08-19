//
//  ContentEditView.swift
//  CharacterBoard-Doo
//
//  Created by Handoo Jeong on 2023/08/19.
//

import SwiftUI

struct ContentEditView: View {
    var characterStore: CharacterStore
    @State var characterName: String

    
    var body: some View {
        VStack {
            Divider()
                .frame(height: 1)
                .overlay(.gray)
                .padding()
                
            HStack {
                //            Image("Darius")
                //            .resizable()
                Rectangle()
                    .frame(width: 50, height: 50)
                    .opacity(0)
                
                    .overlay (
                        Image("Darius")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 90)
                            .padding(.trailing, 10)
                            .clipShape(Circle())
                    )
                
                
                Rectangle()
                    .frame(height: 200)
            }
        }
    }
}

struct ContentEditView_Previews: PreviewProvider {
    static var previews: some View {
        ContentEditView(characterStore: CharacterStore(selectedChar: "Darius", selectedImdex: 0), characterName: "Darius")
    }
}
