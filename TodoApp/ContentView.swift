//
//  ContentView.swift
//  TodoApp
//
//  Created by 松戸誠人 on 2022/03/23.
//

import SwiftUI


struct ContentView: View {
    // useStateと同義
    @ObservedObject var userData = UserData()
    
    var body: some View {
        NavigationView{
            List{
                ForEach(userData.tasks){ task in
                    Button(action:{
                        //firstIndexは要素を探してindexに番号を入れる
                        guard let index =
                                self.userData.tasks
                                .firstIndex(of: task)else{return}
                        self.userData.tasks[index].checked.toggle()
                    }){
                        ListRow(task: task.title, isCheck: task.checked)
                    }
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
