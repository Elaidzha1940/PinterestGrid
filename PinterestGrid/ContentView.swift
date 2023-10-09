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
        
        return ScrollView {
            PinterestGrid(gridItem: gridItem, numberofColumns: 2, spacing: 20, horizontalPadding: 20)
            
        }
    }
}

#Preview {
    ContentView()
}
