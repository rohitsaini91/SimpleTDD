//
//  ViewController.swift
//  TDD
//
//  Created by MACBOOK on 13/02/20.
//  Copyright © 2020 Saini. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var totalCookieLbl: UILabel!
    @IBOutlet weak var shortbreadCookiesLbl: UILabel!
    @IBOutlet weak var gingerBreadCookieLbl: UILabel!
    @IBOutlet weak var chocolateCookieLbl: UILabel!
    
    var cookieJar: CookieController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        cookieJar = CookieController()
        refreshUI()
    }
    
    @IBAction func onGenerateGingerbreadCookies(_ sender: Any) {
        cookieJar?.addGingerbreadCookie()
        refreshUI()
    }
    @IBAction func onGenerateChocolateChipCookies(_ sender: Any) {
        cookieJar?.addChocolateChipCookie()
        refreshUI()
    }
    @IBAction func onGenerateShortbreadCookies(_ sender: Any) {
        cookieJar?.addShortbreadCookie()
        refreshUI()
    }
    
    @IBAction func onClearAllCookies(_ sender: Any) {
        cookieJar?.reset()
        refreshUI()
    }
    
    private func refreshUI() -> Void{
        let totalGinger = cookieJar!.gingerbreadCookies!.count
        let totalShort = cookieJar!.shortbreadCookies!.count
        let totalChocolate = cookieJar!.chocolateChipCookies!.count
        let total = totalGinger + totalShort + totalChocolate
        
        gingerBreadCookieLbl.text = "Gingerbread cookies: \(totalGinger)"
        shortbreadCookiesLbl.text = "Shortbread cookies: \(totalShort)"
        chocolateCookieLbl.text = "Chocolate chip cookies: \(totalChocolate)"
        totalCookieLbl.text = "Total cookies: \(total)"
    }
}


