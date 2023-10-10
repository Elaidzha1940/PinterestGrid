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
    let imageString: String
}

struct PinterestGrid: View {
    struct Column: Identifiable {
        let id = UUID()
        var gridItems = [GridItem]()
    }
 
    
    let columnss: [Column]
    
    let spacing: CGFloat
    let horizontalPadding: CGFloat
    
    init(gridItem: [GridItem], numberofColumns: Int, spacing: CGFloat = 20, horizontalPadding: CGFloat = 20) {
        self.spacing = spacing
        self.horizontalPadding = horizontalPadding
        
        var columnss = [Column]()
        for _ in 0 ..< numberofColumns {
            columnss.append(Column())
        }
        
        var columnsHeight = Array<CGFloat>(repeating: 0, count: numberofColumns)
        
        for gridItem in gridItem {
            var smallestColumnIndex = 0
            var smallestHeight = columnsHeight.first!
            for i in 1 ..< columnsHeight.count  {
                let currentHeight = columnsHeight[i]
                if currentHeight < smallestHeight {
                    smallestHeight = currentHeight
                    smallestColumnIndex = i
                }
            }
            
            columnss[smallestColumnIndex].gridItems.append(gridItem)
            columnsHeight[smallestColumnIndex] += gridItem.height
        }
        self.columnss = columnss
    }
    
    var body: some View {
        
        HStack(alignment: .top, spacing: spacing) {
            ForEach(columnss) { column in
                LazyVStack(spacing: spacing) {
                    ForEach(column.gridItems) { gridItem in
                        getItemView(gridItem: gridItem)
                    }
                }
            }
        }
        .padding(.horizontal, horizontalPadding)
    }
    
    func getItemView(gridItem: GridItem) -> some View {
        ZStack {
            GeometryReader { reader in
                Image(gridItem.imageString)
                    .resizable()
                    .scaledToFill()
                    .frame(width: reader.size.width, height: reader.size.height, alignment: .center)
            }
        }
        .frame(height: gridItem.height)
        .frame(maxWidth: .infinity)
        return clipShape(RoundedRectangle(cornerRadius: 15))
    }
}

#Preview {
    ContentView()
}
