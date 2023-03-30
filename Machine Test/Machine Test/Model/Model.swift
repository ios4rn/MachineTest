//
//  Model.swift
//  Machine Test
//
//  Created by Rabin on 29/03/23.
//

import Foundation

class Model{
    var author: String?
    var download_url: String?
    var height: Int?
    var url: String?
    var width: Int?
    var id: String?
    init(fromdata: [String:Any]){
        self.author = fromdata["author"] as? String
        self.download_url = fromdata["download_url"] as? String
        self.url = fromdata["url"] as? String
        self.height = fromdata["height"] as? Int
        self.width = fromdata["width"] as? Int
        self.id = fromdata["id"] as? String
    }
}
