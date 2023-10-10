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
    let gridItems = [
        
        GridItem(height: 400, imageString: "bridgehouse"),
        GridItem(height: 100, imageString: "buildings"),
        GridItem(height: 200, imageString: "bw"),
        GridItem(height: 250, imageString: "deer"),
        GridItem(height: 150, imageString: "europe"),
        GridItem(height: 450, imageString: "hich"),
        GridItem(height: 300, imageString: "ice"),
        GridItem(height: 200, imageString: "kemping"),
        GridItem(height: 50, imageString: "kids"),
        GridItem(height: 500, imageString: "ny"),
        GridItem(height: 350, imageString: "roads"),
        GridItem(height: 100, imageString: "ski"),
        GridItem(height: 600, imageString: "snowhouse"),
        GridItem(height: 100, imageString: "train"),
        GridItem(height: 250, imageString: "trees"),
        GridItem(height: 100, imageString: "winter"),
    ]
    
    var body: some View {
        
        return ScrollView {
            PinterestGrid(gridItem: gridItems, numberofColumns: 3, spacing: 20, horizontalPadding: 20)
            
        }
    }
}

#Preview {
    ContentView()
}
