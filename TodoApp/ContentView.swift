//
//  ContentView.swift
//  TodoApp
//
//  Created by 松戸誠人 on 2022/03/23.
//

import SwiftUI


struct ContentView: View {
    var userData = UserData()
    var body: some View {
        NavigationView{
            List{
                //for Eachで展開する
                ForEach(userData.tasks){ task in
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
