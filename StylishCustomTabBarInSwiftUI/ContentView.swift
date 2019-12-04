//
//  ContentView.swift
//  StylishCustomTabBarInSwiftUI
//
//  Created by ramil on 04.12.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var index = 0
    var body: some View {
        
        ZStack {
            if self.index == 0 {
                Color.orange.edgesIgnoringSafeArea(.top)
            } else if self.index == 1 {
                Color.blue.edgesIgnoringSafeArea(.top)
            } else if self.index == 2 {
                Color.green.edgesIgnoringSafeArea(.top)
            } else {
                Color.yellow.edgesIgnoringSafeArea(.top)
            }
            VStack {
                Spacer()
                TabBar(index: $index)
            }

        }.animation(.spring())
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct TabBar: View {
    @Binding var index: Int
    var body: some View {
        HStack(spacing: 15) {
            HStack {
                Image(systemName: "house.fill")
                    .resizable()
                    .frame(width: 35, height: 35)
                Text(self.index == 0 ? "Home" : "")
                    .fontWeight(.light)
                    .font(.system(size: 14))
            }
            .padding(15)
            .background(self.index == 0 ? Color.orange.opacity(0.5) : Color.clear)
            .clipShape(Capsule())
            .onTapGesture {
                self.index = 0
            }
            
            HStack {
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 35, height: 35)
                Text(self.index == 1 ? "Person" : "")
                .fontWeight(.light)
                .font(.system(size: 14))
            }
            .padding(15)
            .background(self.index == 1 ? Color.blue.opacity(0.5) : Color.clear)
            .clipShape(Capsule())
            .onTapGesture {
                self.index = 1
            }
            
            HStack {
                Image(systemName: "bell.fill")
                    .resizable()
                    .frame(width: 35, height: 35)
                Text(self.index == 2 ? "Notification" : "")
                .fontWeight(.light)
                .font(.system(size: 14))
            }
            .padding(15)
            .background(self.index == 2 ? Color.green.opacity(0.5) : Color.clear)
            .clipShape(Capsule())
            .onTapGesture {
                self.index = 2
            }
            
            HStack {
                Image(systemName: "tv.fill")
                    .resizable()
                    .frame(width: 35, height: 35)
                Text(self.index == 3 ? "Watch" : "")
                .fontWeight(.light)
                .font(.system(size: 14))
            }
            .padding(15)
            .background(self.index == 3 ? Color.yellow.opacity(0.5) : Color.clear)
            .clipShape(Capsule())
            .onTapGesture {
                self.index = 3
            }
        }
        .padding(.top, 8)
        .frame(width: UIScreen.main.bounds.width)
        .background(Color.white)
        .animation(.default)
    }
}
