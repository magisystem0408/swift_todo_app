//
//  ListRow.swift
//  TodoApp
//
//  Created by 松戸誠人 on 2022/03/23.
//

import SwiftUI

struct ListRow: View {
    var body: some View {
        
        HStack{
            Text("□")
            Text("散歩")
        }
    }
}

struct ListRow_Previews: PreviewProvider {
    static var previews: some View {
        ListRow()
    }
}