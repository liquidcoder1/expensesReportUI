//
//  ExpensesBreakDown.swift
//  ExpensesReportUI
//
//  Created by John K on 13/12/2019.
//  Copyright © 2019 Liquidcoder All rights reserved.
//

import SwiftUI

struct ExpenseCategory: Identifiable {
    var id: UUID = UUID()
    var name: String = ""
    var percent: CGFloat = 0
    var amount: CGFloat = 0
    var colors: [Color] = []
}

class ExpensesBreakDown: ObservableObject {
    
    @Published var categories = [ExpenseCategory]()
    var expense = Expense()


    init() {
        generateRandom(Expense.getRandom().first(where: { $0.month == Date.month })!)
    }
    
    func generateRandom(_ expense: Expense){
        let percent1 = CGFloat.random(in: 0...1)
        let percent2 = CGFloat.random(in: 0...(1-percent1))
        let percent3 = CGFloat.random(in: 0...(1-(percent2+percent1)))
        let percent4 = CGFloat.random(in: 0...(1-(percent2+percent1+percent3)))
        let percent5 = 1 - (percent4+percent2+percent1+percent3)
        let categories = [
            ExpenseCategory(name: "Groceries", percent: percent1, amount: expense.consumed * percent1, colors: [Color.red, Color.clearPurple]),
            ExpenseCategory(name: "Education", percent: percent2, amount: expense.consumed * percent2, colors: [Color.darkYellow, Color.lightYellow]),
            ExpenseCategory(name: "Home", percent: percent3, amount: expense.consumed * percent3, colors: [Color.darkPurple, Color.lightPurple]),
            ExpenseCategory(name: "Health", percent: percent4, amount: expense.consumed * percent4, colors: [Color.red, Color.clearPurple]),
            ExpenseCategory(name: "Personal care", percent: percent5, amount: expense.consumed * percent5, colors: [Color.darkYellow, Color.lightYellow]),
        ]
        
        self.expense = expense
        
        self.categories = categories
    }
    
}


