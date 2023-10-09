//  /*
//
//  Project: PinterestGrid
//  File: PinterestGrid.swift
//  Created by: Elaidzha Shchukin
//  Date: 09.10.202
//
//  */

import SwiftUI

struct PinterestGrid: View {
    let spacing: CGFloat = 5
    
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
    }
}

#Preview {
    ContentView()
}
