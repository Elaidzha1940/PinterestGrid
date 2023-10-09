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
}

struct PinterestGrid: View {
    struct Column: Identifiable {
        let id = UUID()
        var gridItems = [GridItem]()
    }
    let columns = [
        Column(gridItems: [
        GridItem(height: 200)
        ])
    ]
    
    let spacing: CGFloat = 5
    let horizontalPadding: CGFloat = 10
    
    var body: some View {
        
        HStack(alignment: .top, spacing: spacing) {
             
            LazyVStack(spacing: spacing) {
                ForEach(0..<17) { _ in
                    Rectangle()
                        .foregroundColor(.black)
                        .frame(height: CGFloat.random(in: 20...250))
                }
            }
            
            LazyVStack(spacing: spacing) {
                ForEach(0..<17) { _ in
                    Rectangle()
                        .foregroundColor(.black)
                        .frame(height: CGFloat.random(in: 20...250))
                }
            }
        }
        .padding(.horizontal, horizontalPadding)
    }
}

#Preview {
    ContentView()
}
