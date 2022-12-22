//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by inoue mei on 2022/12/07.
//
//こっちはmainの構造体を作るところなので直接動作内容を書くことはない
import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
            //ここハッカソンのとこ（environmentObject）
        }
    }
}
