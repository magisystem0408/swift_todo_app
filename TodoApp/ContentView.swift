//
//  ContentView.swift
//  TodoApp
//
//  Created by 松戸誠人 on 2022/03/23.
//

import SwiftUI

//for eachで取り出す。
struct Task: Identifiable{
    let id = UUID()
    var title: String
    var checked: Bool
    
    init(title: String,checked: Bool){
        self.title = "ねこまむし"
        self.checked = checked
    }
}

struct ContentView: View {
    var tasks = [
        Task(title: "散歩", checked: true),
        Task(title: "料理", checked: true),
        Task(title: "筋トレ", checked: true),
    ]
    var body: some View {
        NavigationView{
            List{
                //                for Eachで展開する
                ForEach(tasks){ task in
                    ListRow(task: task.title, isCheck: task.checked)
                }
                
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
