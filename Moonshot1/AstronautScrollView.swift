//
//  AstronautScrollView.swift
//  Moonshot1
//
//  Created by Oliver Delaney on 10/26/23.
//

import Foundation
import SwiftUI

struct AstronautScrollView: View {
    
    let crew = [MissionView.CrewMember]().self
        
        var body: some View {
            ScrollView(.horizontal, showsIndicators: false) {
                VStack{
                    ForEach(crew, id: \.role) { crewMember in
                        NavigationLink {
                            AstronautView(astronaut: crewMember.astronaut)
                        } label: {
                            HStack {
                                Image(crewMember.astronaut.id)
                                    .resizable()
                                    .frame(width: 104, height: 72)
                                    .clipShape(Capsule())
                                    .overlay(
                                        Capsule()
                                            .strokeBorder(.white, lineWidth: 1)
                                    )
                                
                                VStack(alignment: .leading) {
                                    Text(crewMember.astronaut.name)
                                        .foregroundColor(.white)
                                        .font(.headline)
                                    Text(crewMember.role)
                                        .foregroundColor(.secondary)
                                }
                            }
                            .padding(.horizontal)
                        }
                    }
                }
            }
            .padding(.horizontal)
            
        }
    }


struct AstronautScrollView_Previews: PreviewProvider {
    static var previews: some View {
        AstronautScrollView()
        
    }
}
