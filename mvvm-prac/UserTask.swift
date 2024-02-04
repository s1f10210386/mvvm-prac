//
//  UserTask.swift
//  mvvm-prac
//
//  Created by 金澤帆高 on 2024/02/05.
//

import SwiftUI

//ContentViewから移してきた
struct Task: Identifiable,Equatable{
    let id = UUID()
    let title: String
    var checked: Bool
    
    //これによってインスタンスを作るときに値が格納される
    init(title: String, checked: Bool){
        self.title = title
        self.checked = checked
    }
}
