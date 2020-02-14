//
//  Cookie.swift
//  TDD
//
//  Created by MACBOOK on 14/02/20.
//  Copyright © 2020 Saini. All rights reserved.
//

import Foundation

enum cookieType{
    case shortbread
    case gingerbread
    case chocolateChip
}

class Cookie: NSObject{
    var type: cookieType
    init(_ type: cookieType){
        self.type = type
        super.init()
    }
}
