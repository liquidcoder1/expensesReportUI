//
//  CircleView.swift
//  ExpensesReportUI
//
//  Created by John Kulimushi on 11/12/2019.
//  Copyright © 2019 John Kulimushi. All rights reserved.
//

import SwiftUI

struct CircleView: View {
    var body: some View {
        VStack{
            Text("Groceries").font(.caption).foregroundColor(.white)
            Text("$3098").font(.title).foregroundColor(.white)
            }.frame(width: 120, height: 120)
        .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.clearPurple]) , startPoint: .top, endPoint: .bottom) )
        .cornerRadius(70)
        .shadow(color: Color.clearPurple.opacity(0.4), radius: 20, x: 0, y: 10)

    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        CircleView()
    }
}
