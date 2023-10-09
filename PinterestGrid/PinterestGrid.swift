//  /*
//
//  Project: PinterestGrid
//  File: PinterestGrid.swift
//  Created by: Elaidzha Shchukin
//  Date: 09.10.202
//
//  */

import SwiftUI

struct GridItem: Identifiable {
    let id = UUID()
    let height: CGFloat
    let title: String
}

struct PinterestGrid: View {
    struct Column: Identifiable {
        let id = UUID()
        var gridItems = [GridItem]()
    }
    let columns = [
        Column(gridItems: [
            GridItem(height: 200, title: "1"),
            GridItem(height: 170, title: "5"),
            GridItem(height: 300, title: "8"),
            GridItem(height: 150, title: "4"),
        ]),
        
        Column(gridItems: [
            GridItem(height: 100, title: "2"),
            GridItem(height: 350, title: "7"),
            GridItem(height: 150, title: "6"),
            GridItem(height: 250, title: "3"),
        ])
    ]
    
    let ccolumns: [GridItem]
    
    let spacing: CGFloat
    let horizontalPadding: CGFloat
    
    init(gridItem: [GridItem], numberofColumns: Int, spacing: CGFloat = 20, horizontalPadding: CGFloat = 20) {
        self.spacing = spacing
        self.horizontalPadding = horizontalPadding
        
        var columns = [Column]()
        for _ in 0 ..< numberofColumns {
            ccolumns.append(Column())
        }
        
        var columnsHeight = Array<CGFloat>(repeating: 0, count: numberofColumns)
        
        for gridItem in gridItem {
            var smallestColumnIndex = 0
            var smallestHeight = columnsHeight.first!
            for i in 1 ..< columnsHeight.count  {
                let currentHeight = columnsHeight[i]
                if currentHeight < smallestHeight {
                    smallestHeight = currentHeight
                    smallestColumnIndex =
                }
            }
            
            ccolumns[smallestColumnIndex].gridItems.append(gridItem)
            columnsHeight[smallestColumnIndex] += gridItem.height
        }
        self.ccolumns = ccolumns
    }
    
    var body: some View {
        
        HStack(alignment: .top, spacing: spacing) {
             
            ForEach(columns) { column in
                LazyVStack(spacing: spacing) {
                    ForEach(column.gridItems) { gridItem in
                        
                        Rectangle()
                            .foregroundColor(.mint)
                            .frame(height: gridItem.height)
                            .overlay(
                                Text(gridItem.title)
                                    .font(.system(size: 20, weight: .bold, design: .rounded))
                            )
                    }
                }
            }
        }
        .padding(.horizontal, horizontalPadding)
    }
}

#Preview {
    ContentView()
}
