//
//  ContentView.swift
//  Challege2
//
//  Created by Nick Krasnitskiy on 23.10.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var items = ["👊", "✌️", "🤚"]
    @State private var currentItem = Int.random(in: 0...2)
    @State private var condition = false
    @State private var showingAlert = false
    
    @State private var score = 0
    @State private var countQueston = 0
    
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
                        Text(condition ? "Win": "Lose")
                            .font(.largeTitle.bold())
                            .foregroundStyle(.white)
                    }
                    Spacer()
                    ZStack {
                        Circle()
                        Text(items[currentItem])
                            .font(.system(size: 100))
                    }
                    .padding()
                    
                    Spacer()
                    HStack(spacing: 30) {
                        Button {
                            askQuestion()
                            buttonTapped(item: items[0])
                        } label: {
                            ZStack {
                                Circle()
                                    .buttonStyle()
                                Text(items[0])
                                    .font(.system(size: 65))
                            }
                            
                        }
                        Button {
                            askQuestion()
                            buttonTapped(item: items[1])
                        } label: {
                            ZStack {
                                Circle()
                                    .buttonStyle()
                                Text(items[1])
                                    .font(.system(size: 65))
                            }
                            
                        }
                        Button {
                            askQuestion()
                            buttonTapped(item: items[2])
                        } label: {
                            ZStack {
                                Circle()
                                    .buttonStyle()
                                Text(items[2])
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
                Text("Score: \(score)")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                Spacer()
            }
            .alert("Congratulations! You've finished!", isPresented: $showingAlert) {
                Button("Reset the game", action: reset)
            } message: {
                Text("Your final score: \(score)")
            }
        }
    }
    
    func buttonTapped(item: String) {
        if condition {
            switch item {
            case "👊":
                if items[currentItem] == "✌️" {
                    score += 1
                } else {
                    score -= 1
                }
            case "✌️":
                if items[currentItem] == "🤚" {
                    score += 1
                } else {
                    score -= 1
                }
            case "🤚":
                if items[currentItem] == "👊" {
                    score += 1
                } else {
                    score -= 1
                }
            default:
                print()
            }
            
        } else {
            switch item {
            case "👊":
                if items[currentItem] == "🤚" {
                    score += 1
                } else {
                    score -= 1
                }
            case "✌️":
                if items[currentItem] == "👊" {
                    score += 1
                } else {
                    score -= 1
                }
            case "🤚":
                if items[currentItem] == "✌️" {
                    score += 1
                } else {
                    score -= 1
                }
            default:
                print()
            }
        }
        
        if countQueston > 10 {
            showingAlert = true
        }
        
        condition.toggle()
        items.shuffle()
    }
    
    func askQuestion() {
        countQueston += 1
    }
    
    func reset() {
        items.shuffle()
        score = 0
    }
}

struct ButtonColorModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundStyle(Color(#colorLiteral(red: 0.0152423894, green: 0.07408868521, blue: 0.3461441398, alpha: 1)))
        
    }
}

extension View {
    func buttonStyle() -> some View {
        modifier(ButtonColorModifier())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
