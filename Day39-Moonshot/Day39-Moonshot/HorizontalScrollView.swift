//
//  HorizontalScrollView.swift
//  Day39-Moonshot
//
//  Created by Nick Krasnitskiy on 17.04.2025.
//

import SwiftUI

struct HorizontalScrollView: View {
    let crew: [CrewMember] 
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(crew, id: \.role) { crewMember in
                    NavigationLink {
                        AstronautView(astronaut: crewMember.astronaut)
                    } label: {
                        HStack {
                            Image(crewMember.astronaut.id)
                                .resizable()
                                .frame(width: 120, height: 80)
                                .clipShape(.circle)
                                .overlay(
                                    Circle()
                                        .strokeBorder(.white, lineWidth: 1)
                                )
                            
                            VStack(alignment: .leading) {
                                Text(crewMember.astronaut.name)
                                    .foregroundStyle(.white)
                                    .font(.headline)
                                Text(crewMember.role)
                                    .foregroundStyle(.white.opacity(0.5))
                            }
                        }
                    }
                }
            }
        }
        .padding(.top)
    }
}

#Preview {
    let missions: [Mission] = Bundle.main.decode("missions.json")
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    HorizontalScrollView(crew: [CrewMember(role: missions[0].crew[0].role, astronaut: astronauts["aldrin"]!)])
}
