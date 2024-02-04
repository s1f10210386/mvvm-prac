//
//  ContentView.swift
//  mvvm-prac
//
//  Created by 金澤帆高 on 2024/02/05.
//

import SwiftUI


struct ContentView: View {
    //Task構造体のインスタンスを複数作成し、tasks配列に格納
    //    var tasks = [
    //        Task(title:"散歩", checked: true),
    //        Task(title:"料理", checked: false),
    //        Task(title:"筋トレ", checked: true),
    //    ]
    
    //構造体userDataをインスタンス化
    //Observedobjectがついたインスタンスの、Publishedがついたプロパティの変更を監視し、変更があった場合にViewを更新する
    @ObservedObject var userData = UserData()
    
    var body: some View {
        NavigationView{
            List {
                //ForEachでuserDataのtasks配列から要素１つ(task)取り出してListRowに渡す
                ForEach(userData.tasks){task in
                    Button(action: {
                        //firstIndexメソッドは、引数で指定した要素を探し出し、その要素の番号を返す
                        guard let index = self.userData.tasks.firstIndex(of: task) else {
                            return
                        }
                        
                        self.userData.tasks[index].checked.toggle()
                    })
                    {ListRow(task: task.title, isCheck: task.checked)}
                }
                
                Text("➕")
                    .font(.title)
            }
            .navigationBarTitle(Text("Tasks"))
            .navigationBarItems(trailing: Button(action:{
                DeleteTask()
            })
                                {
                Text("Delete")
            }
            )
        }
    }
    
    func DeleteTask(){
        let necessaryTask = self.userData.tasks.filter{!$0.checked}
        self.userData.tasks = necessaryTask
    }
}

struct ContentView_Previews:PreviewProvider{
    static var previews : some View{
        ContentView()
    }
}
