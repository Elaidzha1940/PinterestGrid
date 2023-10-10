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
        
        GridItem(height: 450, imageString: "1"),
        GridItem(height: 250, imageString: "2"),
        GridItem(height: 350, imageString: "3"),
        GridItem(height: 440, imageString: "4"),
        GridItem(height: 330, imageString: "5"),
        GridItem(height: 450, imageString: "6"),
        GridItem(height: 180, imageString: "7"),
        GridItem(height: 480, imageString: "8"),
        GridItem(height: 250, imageString: "9"),
        GridItem(height: 340, imageString: "10"),
        GridItem(height: 150, imageString: "1"),
        GridItem(height: 270, imageString: "12"),
        GridItem(height: 510, imageString: "13"),
        GridItem(height: 270, imageString: "14"),
        GridItem(height: 310, imageString: "15"),
        GridItem(height: 230, imageString: "16"),
        GridItem(height: 420, imageString: "17"),
        GridItem(height: 280, imageString: "18"),
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
