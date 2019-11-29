//
//  Operations.swift
//  LDAExample_Example
//
//  Created by UGORETS Maria on 29/11/2019.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import Foundation

public enum OperationType: String, CaseIterable {
    case insertCash = "insert cash"
    case withdrawCash = "get cash"
    case phone = "phone "
    case jkx = "jkx"
    case transferToCard = "transfer"
}

public enum RecipientType {
    case phone, card, jkx, insert
}
