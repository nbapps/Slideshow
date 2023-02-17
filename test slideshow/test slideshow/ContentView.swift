//
//  ContentView.swift
//  test slideshow
//
//  Created by Nicolas Bachur on 19/01/2023.
//

import SwiftUI
import Slideshow

struct ContentView: View {
    struct Item: Identifiable {
        let id = UUID()
        let image: String
        let title: String
    }
    
    let items = [
        Item(image: "image1", title: "first"),
        Item(image: "image2", title: "second"),
        Item(image: "image1", title: "first")
    ]
    
    @State private var index = 0
    
    var body: some View {
        VStack {
            Slideshow(
                items,
                spacing: 10,
                isWrap: true,
                autoScroll: .active(5)
            ) { item in
                itemView(item: item)
//                    .frame(width: 350, height: 200)
                    .cornerRadius(16)
            }
            Text(index, format: .number)
            Button {
                index += 1
            } label: {
                Text("Toggle")
            }

        }
    }
    
    @ViewBuilder
        func itemView(item: Item) -> some View {
                Image(item.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
//                    .frame(height: 200)
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
