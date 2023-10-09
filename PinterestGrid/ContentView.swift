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
        
        GridItem(height: "400", imageString: "bridgehouse"),
        GridItem(height: "400", imageString: "buildings"),
        GridItem(height: "400", imageString: "bw"),
        GridItem(height: "400", imageString: "deer"),
        GridItem(height: "400", imageString: "europe"),
        GridItem(height: "400", imageString: "hich"),
        GridItem(height: "400", imageString: "ice"),
        GridItem(height: "400", imageString: "kemping"),
        GridItem(height: "400", imageString: "kids"),
        GridItem(height: "400", imageString: "ny"),
        GridItem(height: "400", imageString: "roads"),
        GridItem(height: "400", imageString: "ski"),
        GridItem(height: "400", imageString: "snowhouse"),
        GridItem(height: "400", imageString: "train"),
        GridItem(height: "400", imageString: "trees"),
        GridItem(height: "400", imageString: "winter"),
    ]
    
    var body: some View {
        
        return ScrollView {
            PinterestGrid(gridItem: gridItem, numberofColumns: 2, spacing: 20, horizontalPadding: 20)
            
        }
    }
}

#Preview {
    ContentView()
}
