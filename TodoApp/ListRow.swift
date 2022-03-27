//
//  ListRow.swift
//  TodoApp
//
//  Created by 松戸誠人 on 2022/03/23.
//

import SwiftUI

struct ListRow: View {
    let task: String
    let isCheck: Bool
    var body: some View {
        HStack{
            if isCheck{
                Text("✔︎")
                Text(task)
                    .strikethrough()
                    .fontWeight(.ultraLight)
            }else{
                Text("□")
                Text(task)
            }
        }
    }
}

struct ListRow_Previews: PreviewProvider {
    static var previews: some View {
        ListRow(task: "料理",isCheck: false)
    }
}
