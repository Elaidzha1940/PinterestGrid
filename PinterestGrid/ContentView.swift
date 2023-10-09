//  /*
//
//  Project: PinterestGrid
//  File: ContentView.swift
//  Created by: Elaidzha Shchukin
//  Date: 09.10.202
//
//  */

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        var gridItem = [GridItem]()
        
        for i in 0 ..< 30 {
            let randomHeight = CGFloat.random(in: 10)
        }
        
        ScrollView {
            PinterestGrid(gridItem: <#[GridItem]#>, numberofColumns: <#Int#>)
            
        }
    }
}

#Preview {
    ContentView()
}
