//
//  ContentView.swift
//  Challege2
//
//  Created by Nick Krasnitskiy on 23.10.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            ZStack {
                RadialGradient(stops: [.init(color: Color(#colorLiteral(red: 0, green: 0.009437999482, blue: 0.3450298726, alpha: 1)), location: 0.3), .init(color: Color(#colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1)), location: 0.3)], center: .top, startRadius: 400, endRadius: 410)
                    .ignoresSafeArea()
                VStack {
                    Spacer()
                    Text("Rock - Sciccors - Paper")
                        .font(.largeTitle.bold())
                        .foregroundStyle(.white)
                    Spacer()
                    VStack(alignment: .center) {
                        Group{

                            Text("Condition to meet")
                                .font(.title)
                                .foregroundStyle(.white)
                            Text("Win")
                                .font(.largeTitle.bold())
                                .foregroundStyle(.white)
                        }
                        Spacer()
                        ZStack {
                            Circle()
                            Text("👊")
                                .font(.system(size: 100))
                        }
                        .padding()
                        
                        Spacer()
                        HStack(spacing: 30) {
                            Button {
                                // // logic button 1
                            } label: {
                                ZStack {
                                    Circle()
                                        .foregroundStyle(Color(#colorLiteral(red: 0.0152423894, green: 0.07408868521, blue: 0.3461441398, alpha: 1)))
                                    Text("👊")
                                        .font(.system(size: 65))
                                }
                                
                            }
                            Button {
                                // logic button 2
                            } label: {
                                ZStack {
                                    Circle()
                                        .foregroundStyle(Color(#colorLiteral(red: 0.0152423894, green: 0.07408868521, blue: 0.3461441398, alpha: 1)))
                                    Text("✌️")
                                        .font(.system(size: 65))
                                }
                                
                            }
                            Button {
                                // logic button 3
                            } label: {
                                ZStack {
                                    Circle()
                                        .foregroundStyle(Color(#colorLiteral(red: 0.0152423894, green: 0.07408868521, blue: 0.3461441398, alpha: 1)))
                                    Text("🤚")
                                        .font(.system(size: 65))

                                }
                                                            }
                        }
                        .padding(30)
                        Spacer()
                    }
                    .frame(maxHeight: 400)
                    .padding()
                    .background(.ultraThinMaterial)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    Spacer()
                    Text("Score: 0")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                    Spacer()
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
