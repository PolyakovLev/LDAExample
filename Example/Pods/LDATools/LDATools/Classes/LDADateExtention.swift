//
//  LDADateExtention.swift
//  Alamofire
//
//  Created by UGORETS Maria on 29/11/2019.
//

import Foundation

extension Date {
    
    public enum DateFormat: String {
        case yearMonthDayTime12 = "yyy.MM.dd 'at' hh:mm a"
        case yearMonthDayTime24 = "yyy.MM.dd 'at' HH:mm"
        case yearMinthDay = "yyy.MM.dd"
    }
    
    public func dateToString(format: DateFormat) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format.rawValue
        return dateFormatter.string(from: self)
    }
    
    public var todayMidnight: Date {
        let calendar = Calendar.current
        return calendar.dateInterval(of: .day, for: Date())!.start
    }
    
    public var yestedayMidnight: Date {
        return Date().todayMidnight - (60 * 60 * 24)
    }
    
    public var currentMonthStart : Date {
        let calendar = Calendar.current
        return calendar.dateInterval(of: .month, for: Date())!.start
    }

    public var currentYearStart : Date {
        let calendar = Calendar.current
        return calendar.dateInterval(of: .year, for: Date())!.start
    }
    
    public func isInPeriod(_ period:(start: Date, end: Date)) -> Bool {
        if self >= period.start  && self <= period.end {
            return true
        }
        return false
    }
}
