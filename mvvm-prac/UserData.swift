//
//  UserData.swift
//  mvvm-prac
//
//  Created by 金澤帆高 on 2024/02/05.
//

import SwiftUI

class UserData:ObservableObject {
    @Published var tasks = [
        Task(title:"散歩", checked: true),
        Task(title:"料理", checked: false),
        Task(title:"筋トレ", checked: true),
    ]
}
