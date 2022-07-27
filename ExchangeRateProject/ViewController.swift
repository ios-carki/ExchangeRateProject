//
//  ViewController.swift
//  ExchangeRateProject
//
//  Created by Carki on 2022/07/27.
//

import UIKit

struct ExchangeRate {
    var currencyRate: Int {
        willSet(newExRate) {
            print("환율이 \(currencyRate)에서 \(newExRate)로 변경될 예정입니다.")
        }
        didSet {
            print(<#T##items: Any...##Any#>)
        }
    }
    var USD: Int
    
    var KRW: Int {
        willSet(exKRW) {
            print("한국돈 \(KRW)를 환율을 적용하면 \(exKRW)가 됩니다.")
        }
        didSet {
            print("\(oldValue)원은 \(KRW)에 환율을 적용한 값이에요")
        }
    }
    
    var exResult: String {
        get {
            let exValue = KRW / 1200
            let calExRate = USD / KRW
            return "한국돈 \(KRW)원에 현재환율 \(calExRate)원을 적용시키면 미국돈 \(USD)달러가 됩니다"
        }
    }
    
    
    
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

