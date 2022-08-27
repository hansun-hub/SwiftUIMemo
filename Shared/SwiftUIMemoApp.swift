//
//  SwiftUIMemoApp.swift
//  Shared
//
//  Created by 김한선 on 2022/08/27.
//

import SwiftUI

@main
struct SwiftUIMemoApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {//여기서 만든 뷰가 첫 번째 main 뷰가 됨_방금 만든 mainListView를 리턴할 것
            MainListView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
