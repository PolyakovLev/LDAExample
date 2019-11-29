//
//  BillPrint.swift
//  LDAExample_Example
//
//  Created by UGORETS Maria on 29/11/2019.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import Foundation
import LDATools

public func printBill(price: Decimal, type: OperationType, time: Date) {
    print("\n\n|--------------BILL:---------------")
    print("|operation sum:  \(price)")
    print("|type:           \(type)")
    print("|time:           \(time.dateToString(format: .yearMonthDayTime24))")
    print("|----------------------------------\n\n")
}
