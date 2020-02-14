//
//  CookieController.swift
//  TDD
//
//  Created by MACBOOK on 14/02/20.
//  Copyright © 2020 Saini. All rights reserved.
//

import Foundation

class CookieController: NSObject{
    var shortbreadCookies: [Cookie]?
    var gingerbreadCookies: [Cookie]?
    var chocolateChipCookies: [Cookie]?
    
    override init() {
        self.shortbreadCookies = [Cookie]()
        self.gingerbreadCookies = [Cookie]()
        self.chocolateChipCookies = [Cookie]()
        super.init()
    }
    
    func reset() {
        self.shortbreadCookies?.removeAll()
        self.gingerbreadCookies?.removeAll()
        self.chocolateChipCookies?.removeAll()
    }
    
    func addShortbreadCookie() -> Void {
        let cookie = Cookie(.shortbread)
        shortbreadCookies?.append(cookie)
    }
    
    func addGingerbreadCookie() -> Void {
        let cookie = Cookie(.gingerbread)
        gingerbreadCookies?.append(cookie)
    }
    func addChocolateChipCookie() -> Void {
        let cookie = Cookie(.chocolateChip)
        chocolateChipCookies?.append(cookie)
    }
}
