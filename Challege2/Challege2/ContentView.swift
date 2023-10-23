//
//  ContentView.swift
//  Challege2
//
//  Created by Nick Krasnitskiy on 23.10.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color.mint
                    .ignoresSafeArea()
                VStack {
                    Text("Condition to meet")
                        .font(.title)
                        .foregroundStyle(.white)
                    Spacer()
                    Text("Win")
                        .font(.largeTitle.bold())
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                    Spacer()
                    Text("👊")
                        .font(.system(size: 100))
                    Spacer()
                    HStack(spacing: 30) {
                        Button {
                            // // logic button 1
                        } label: {
                            Text("👊")
                                .font(.system(size: 65))
                        }
                        Button {
                            // logic button 2
                        } label: {
                            Text("✌️")
                                .font(.system(size: 65))
                        }
                        Button {
                            // logic button 3
                        } label: {
                            Text("🤚")
                                .font(.system(size: 65))
                        }
                    }
                    .padding(30)
                    Spacer()
                    Text("Score: ???")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                    Spacer()
                }
                .navigationTitle("Rock - Paper - Scissors")
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
