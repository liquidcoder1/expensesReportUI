//
//  DateExt.swift
//  ExpensesReportUI
//
//  Created by John Kulimushi on 13/12/2019.
//  Copyright © 2019 John Kulimushi. All rights reserved.
//

import Foundation


extension Date{
    
    static var month: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMM"
        return formatter.string(from: Date())
    }
    
    static func fullMonthName(short: String)-> String{
        let months = [
            "Jan":"January",
            "Feb":"February",
            "March":"Mar",
            "Apr":"April",
            "May":"May",
            "June":"June",
            "Jul":"July",
            "Aug":"August",
            "Sep":"September",
            "Oct":"October",
            "Nov":"November",
            "Dec":"December",
        ]
        
        return months[short] ?? "January"
    }
}

