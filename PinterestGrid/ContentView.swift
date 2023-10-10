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
    @State private var columns = 3
    
    let gridItems = [
        
        GridItem(height: 440, imageString: "2"),
        GridItem(height: 350, imageString: "3"),
        GridItem(height: 350, imageString: "4"),
        GridItem(height: 250, imageString: "5"),
        GridItem(height: 310, imageString: "6"),
        GridItem(height: 350, imageString: "7"),
        GridItem(height: 380, imageString: "17"),
        GridItem(height: 250, imageString: "9"),
        GridItem(height: 300, imageString: "10"),
        GridItem(height: 260, imageString: "1"),
        GridItem(height: 310, imageString: "12"),
        GridItem(height: 250, imageString: "13"),
        GridItem(height: 320, imageString: "14"),
        GridItem(height: 210, imageString: "15"),
        GridItem(height: 120, imageString: "16"),
        GridItem(height: 320, imageString: "4"),
        GridItem(height: 160, imageString: "18"),
    ]
    
    var body: some View {
        NavigationView {
            
            return ScrollView {
                PinterestGrid(gridItem: gridItems, numberofColumns: 2, spacing: 20, horizontalPadding: 20)
                
            }
            .navigationBarItems(leading: removeButton, trailing: addButton)
            .navigationTitle("Pinterest Wall")
        }
    }
    var removeButton: some View {
        Button(action: {
            columns -= 1
        }){
            Text("Remove")

        }
        .disabled(columns == 1)
    }
    
    var addButton: some View {
        Button(action: {
            columns += 1
        }){
            Text("Add")

        }
        .disabled(columns == 1)
    }
}

#Preview {
    ContentView()
}
