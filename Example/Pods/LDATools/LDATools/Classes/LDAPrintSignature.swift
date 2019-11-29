//
//  LDAPrintSignature.swift
//  Alamofire
//
//  Created by UGORETS Maria on 29/11/2019.
//

import Foundation

public final class LDAPrintSignature {
    
    public init() {}
    
    public func debugLog(object: Any, functionName: String = #function, fileName: String = #file) -> String {
        let className = (fileName as NSString).lastPathComponent
        let output = String("object: \(object) file: <\(className)> function: \(functionName)\n")
        return output
    }
}
