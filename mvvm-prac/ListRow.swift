//
//  ListRow.swift
//  mvvm-prac
//
//  Created by 金澤帆高 on 2024/02/05.
//

import SwiftUI

struct ListRow: View {
    
    let task:String
    var isCheck:Bool
    
    var body: some View {
        HStack {
            if isCheck{
                Image(systemName: "checkmark").foregroundColor(.green)
                Text(task)
                    .strikethrough()
                    .fontWeight(.ultraLight)
            } else {
                Text(task)
            }
            
        }
    }
}


struct ListRow_Previews:PreviewProvider{
    static var previews : some View{
        ListRow(task:"料理",isCheck: true)
    }
}
