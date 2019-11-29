//
//  BillPrint.swift
//  LDAExample_Example
//
//  Created by UGORETS Maria on 29/11/2019.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import Foundation
import LDATools

public final class Bill {
    var price: Decimal
    var type: OperationType
    var time: Date
    
    public func describtion() {
        let dateFormater = DateFormatter()
        dateFormater.dateFormat = "yyy.MM.dd 'at' h:mm a"
        print("\n\n|--------------BILL:---------------")
        print("|operation sum:  \(price)")
        print("|type:           \(type)")
        print("|time:           \(time.dateToString(format: .yearMonthDayTime24))")
        print("|----------------------------------\n\n")
    }
    
    public required init(type: OperationType,
                  time: Date,
                  price: Decimal) {
        self.type = type
        self.time = time
        self.price = price
    }
}

