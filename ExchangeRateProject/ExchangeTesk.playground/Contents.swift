import UIKit

struct ExchangeRate {
    var currencyRate: Double { //환율 = 한국돈 / 미국돈
        willSet(newCurrencyRate) {
            print("currencyRate willSet - 환율 변동 예정: \(currencyRate) -> \(newCurrencyRate)")
        }
        didSet {
            print("currencyRate didSet - 환율 변동 완료: \(oldValue) -> \(currencyRate)")
        }
        
    }
    var USD: Double {//미국돈 = 한국돈 / 환율
        willSet(newUSD) {
            print("USD willSet - 환전 금액: USD:\(newUSD)달러로 환전될 예정")
        }
        didSet {
            print("USD didSet - KRW: \(KRW)원 -> \(USD)달러로 환전되었음")
        }
    }
    var KRW: Double { //한국돈 = 미국돈 * 환율
        get {
            USD * currencyRate
            
        }
        set {
            USD = newValue / currencyRate
        }
        
    }
}

var rate = ExchangeRate(currencyRate: 1100, USD: 1)
rate.KRW = 500000
rate.currencyRate = 1350
rate.KRW = 500000
