//
//  ThreadView.swift
//  CharacterBoard-Doo
//
//  Created by Handoo Jeong on 2023/08/19.
//

import SwiftUI

struct ThreadView: View {
    var thread: Thread
    
    var title: String = "Title"
    var content: String = """
u.uiammng  공식 계정입니다.복장, 신발, 가방, 전자 제품등 , 상품 정보나 캠페인 정보를 발신해 갈 것입니다.댓글이나 좋아요 이런 것도 많이 보내주시고 감사합니다.답장이 늦을수도 있으니 이해해주시길 부탁드립니다!자세한 사
"""
    @State var numberOfLike: Int = 0
    @State var numberOfReply: Int = 0
    @State var isLike: Bool = false
    
    var body: some View {
        VStack {
            Divider()
                .padding()
                .bold()
            
            HStack(alignment: .top) {
                Rectangle()
                    .frame(width: 50, height: 50)
//                    .padding(.leading, 15)
                    .opacity(0)
                .overlay(
                    Image("Darius")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100)
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 10))
                        .clipShape(Circle())
                        

                )
                .padding(.leading, 10)

                
                HStack {
                    
                    VStack(alignment: .leading) {
                        HStack {
                            Text(title)
                                .foregroundColor(.white)
                                .font(.title3)
                                .bold()
                                .padding(EdgeInsets(top: 5, leading: 8, bottom: 3, trailing: 5))
                            Spacer()
                            Button {
                                
                            } label: {
                                Image(systemName: "ellipsis")
                                    .foregroundColor(.gray)
                                    .bold()
                            }
                        }
                        Text(content)
                            .foregroundColor(.white)
                            .bold()
                            .padding(EdgeInsets(top: 1, leading: 5, bottom: 3, trailing: 5))
                        
                        HStack {
                            Button {
                                if isLike == false {
                                    isLike = true
                                    numberOfLike += 1
                                } else if isLike == true {
                                    isLike = false
                                    numberOfLike -= 1
                                }
                            } label: {
                                if isLike == false {
                                    Image(systemName: "heart")
                                } else if isLike == true {
                                    Image(systemName: "heart.fill")
                                }
                            }


                            Text("\(numberOfLike)")

                            Image(systemName: "bubble.right")
                                .padding(.leading, 50)
                            
                            Text("\(numberOfReply)")

                        }
                        .foregroundColor(.white)
                        .bold()
                        .padding()
                    }
//                    .padding()
                    Spacer()
                }
                
                .background(Color.black)
                .cornerRadius(10)
                .shadow(radius: 5)
                //            .padding()
                .contextMenu {
                    ShareLink(item: content)
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "trash")
                        Text("Remove")
                    }
                    
                }
            }
            .padding(.trailing, 5)
        }
        
        
    }
}

struct ThreadView_Previews: PreviewProvider {
    static var previews: some View {
        ThreadView(thread: Thread(title: "Darius", content: "u.uiammng  공식 계정입니다.복장, 신발, 가방, 전자 제품등 , 상품 정보나 캠페인 정보를 발신해 갈 것입니다.댓글이나 좋아요 이런 것도 많이 보내주시고 감사합니다.답장이 늦을수도 있으니 이해해주시길 부탁드립니다!자세한 사"))
    }
}
