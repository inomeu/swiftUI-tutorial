//
//  ContentView.swift
//  Landmarks
//
//  Created by inoue mei on 2022/12/07.
//

import SwiftUI

struct ContentView: View {//Viewの構造体一つ目（ビューのコンテンツとレイアウトの記述）
    var body: some View {
        LandmarkList()
        
//LandmarkListに置き換える＝内容網羅してる
//        VStack {
//            MapView()
//                .ignoresSafeArea(edges: .top)
//                .frame(height: 300)
//
//            CircleImage()
//                .offset(y: -130)
//                .padding(.bottom, -130)
//
//            VStack(alignment: .leading){
//                Text("Turtle Rock")//Textの引数指定で中身を変えてもいいし、Previewでスマホ全体をタップした後に文字のとこさらに
//                    .font(.title)
//                HStack{
//                    Text("Joshua Tree National Park")
//                        .font(.subheadline)
//                    Spacer()
//                    Text("California")
//                }
//                        .font(.subheadline)
//                        .foregroundColor(.secondary)
//                Divider()
//
//                Text("About Turtle Rock")
//                    .font(.title2)
//                Text("Descriptive text goes here.")
//            }
//            .padding()
//            Spacer()
        }
    }



struct ContentView_Previews: PreviewProvider {//Viewの構造体二つ目（ビューのプレビュー宣言）
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
