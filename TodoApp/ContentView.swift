//
//  ContentView.swift
//  TodoApp
//
//  Created by 松戸誠人 on 2022/03/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            List{
                ListRow(task: "マムシ")
                ListRow(task: "マムシ")
                ListRow(task: "マムシ")
                
                Text("+")
                    .font(.title)
            }
            .navigationTitle(Text("test"))
            .navigationBarItems(trailing: Text("Delete"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
