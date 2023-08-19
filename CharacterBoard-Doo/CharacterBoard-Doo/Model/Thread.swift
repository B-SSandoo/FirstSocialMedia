//
//  Thread.swift
//  CharacterBoard-Doo
//
//  Created by Handoo Jeong on 2023/08/18.
//

import Foundation

struct Thread {
    var id: UUID = UUID()
    var title: String
    var content: String
    var numberOfLike: Int = 0
    var numberOfReply: Int = 0
}

