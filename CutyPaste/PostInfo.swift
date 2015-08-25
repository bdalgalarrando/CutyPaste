//
//  PostInfo.swift
//  CutyPaste
//
//  Created by Benjamin Dalgalarrando on 8/24/15.
//  Copyright (c) 2015 Catalina Balmaceda. All rights reserved.
//

import Foundation
import SwiftyJSON

class PostInfo {
    let url: String
    let title:String
    let date: String
    let content: String
    let slug: String
    
    init(data: JSON) {
        //println("\n\n\(data)")
        self.url = data["url"].stringValue
        self.title = data["title"].stringValue
        self.slug = data["slug"].stringValue
        self.date = data["date"].stringValue
        self.content = data["content"].stringValue
    }
}