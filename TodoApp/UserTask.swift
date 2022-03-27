//
//  UserTask.swift
//  TodoApp
//
//  Created by 松戸誠人 on 2022/03/23.
//

import SwiftUI


struct Task: Identifiable,Equatable{
    let id = UUID()
    var title: String
    var checked: Bool
    
    init(title: String,checked: Bool){
        self.title = title
        self.checked = checked
    }
}
