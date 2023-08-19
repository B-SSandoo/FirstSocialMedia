//
//  ThreadListView.swift
//  CharacterBoard-Doo
//
//  Created by Handoo Jeong on 2023/08/18.
//

import SwiftUI

struct ThreadListView: View {
    
    
    @StateObject var threadStore = ThreadStore()
//    var threadView = ThreadView(thread: Thread(title: "Darius", content: "u.uiammng  공식 계정입니다.복장, 신발, 가방, 전자 제품등 , 상품 정보나 캠페인 정보를 발신해 갈 것입니다.댓글이나 좋아요 이런 것도 많이 보내주시고 감사합니다.답장이 늦을수도 있으니 이해해주시길 부탁드립니다!자세한 사"))
    
    var body: some View {
        NavigationStack {
            
            TitleView(characterSelectView: CharacterSelectView())
                .frame(height: 80)
            
            ScrollView {
                
            }
 
            
            
            
//            ScrollView {
//
//                    ThreadView(thread: Thread(title: "Darius", content: "u.uiammng  공식 계정입니다.복장, 신발, 가방, 전자 제품등 , 상품 정보나 캠페인 정보를 발신해 갈 것입니다.댓글이나 좋아요 이런 것도 많이 보내주시고 감사합니다.답장이 늦을수도 있으니 이해해주시길 부탁드립니다!자세한 사"))
//
//            }
//            ForEach(threadStore) { in
//
//            }
        }
    }
}

struct ThreadListView_Previews: PreviewProvider {
    static var previews: some View {
        ThreadListView()
    }
}
