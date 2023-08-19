//
//  CharacterSelectView.swift
//  CharacterBoard-Doo
//
//  Created by Handoo Jeong on 2023/08/18.
//

import SwiftUI
import Foundation

struct CharacterSelectView: View {
    @EnvironmentObject var characterStore: CharacterStore
        
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    ForEach(characterStore.charImg.indices, id: \.self) { index in
                        let character = characterStore.charImg[index]
                        Button {
                            characterStore.selectedChar = character
                            characterStore.selectedImdex = index
                        } label: {
                            ZStack {
                                Image(character)
                                    .resizable()
                                    .frame(width: 370, height: 250)
                                
                                if index == characterStore.selectedImdex {
                                    Rectangle()
                                        .foregroundColor(.gray)
                                        .frame(width: 370, height: 250)
                                        .opacity(0.7)
                                    Text(characterStore.charImg[index])
                                        .font(Font.system(size:60))
                                        .bold()
                                        .foregroundColor(.white)
                                }
                            }
                            .padding()
                            
                        }
                    }
                }
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        TitleView(characterSelectView: CharacterSelectView())
                    } label: {
                        Text("선택완료")
                            .bold()
                            .font(Font.system(size: 20))
                    }

                }
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        
                    } label: {
                        Text("취소")
                            .bold()
                            .font(Font.system(size: 20))
                    }

                }
            }
        }
    }
}

struct CharacterSelectView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterSelectView()
    }
}
