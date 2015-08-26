//
//  Category.swift
//  CutyPaste
//
//  Created by Catalina Balmaceda on 21-08-15.
//  Copyright (c) 2015 Catalina Balmaceda. All rights reserved.
//

import Foundation
import SwiftyJSON

class Category {
    let id: String
    let slug:String
    let title: String
    let description: String
    let parent: String
    let post_count: String
    init(data: JSON) {
        self.id = data[0]["id"].stringValue
        self.slug = data[0]["slug"].stringValue
        self.title = data[0]["title"].stringValue
        self.description = data[0]["description"].stringValue
        self.parent = data[0]["parent"].stringValue
        self.post_count = data[0]["post_count"].stringValue
    }
}