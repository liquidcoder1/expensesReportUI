//
//  ExpensesBreakdownView.swift
//  ExpensesReportUI
//
//  Created by John K on 12/12/2019.
//  Copyright © 2019 Liquidcoder. All rights reserved.
//

import SwiftUI

struct ExpensesBreakdownView: View {
    
    @ObservedObject private var expensesBreakDown = ExpensesBreakDown()
    var categories = [ExpenseCategory]()
    @State var percent:CGFloat = 0.0

    
    var body: some View {
        VStack{
            HStack{
                Text("Total expenses").bold()
                Spacer()
                Text("$\(String(format: "%.2f", expensesBreakDown.expense.consumed))").bold()
            }.padding(.vertical)
            
            VStack(spacing: 0) {
                ForEach(categories){ category in
                    ExpenseCategoryView(category: category)
                }
            }
        }
    }
}


struct ExpensesBreakdownView_Previews: PreviewProvider {
    static var previews: some View {
        ExpensesBreakdownView()
    }
}
