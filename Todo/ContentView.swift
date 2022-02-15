//
//  ContentView.swift
//  Todo
//
//  Created by 蘇健豪 on 2022/2/15.
//

import SwiftUI

struct ContentView: View {
    
    let datas: [String] = ["洗衣服", "看牙醫", "換手機電池"]
    @State var selection: Set<String> = []
    @State var editMode: EditMode = .inactive
    
    var body: some View {
        NavigationView {
            List(selection: $selection) {
                ForEach(datas, id:\.self) { data in
                    Text(data)
                }
            }
            .navigationTitle("代辦事項")
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    EditButton()
                }
                ToolbarItemGroup(placement: .bottomBar) {
                    Button {
                        
                    } label: {
                        Image(systemName: "plus.circle.fill")
                        Text("新增提醒事項")
                    }
                    Spacer()
                }
            }
            .environment(\.editMode, $editMode)
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
