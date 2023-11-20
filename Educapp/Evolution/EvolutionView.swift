//
//  EvolutionView.swift
//  Educapp
//
//  Created by Foundation13 on 20/11/23.
//

import Foundation
import SwiftUI
import SwiftData
import Charts

struct Day: Identifiable {
    var day: String
    var hours: Double
    var color: Color
    var id = UUID()
}


let data: [Day] = [
    .init(day: "13", hours: 2, color: Color("Green")),
    .init(day: "13", hours: 1, color: Color("Red")),
    .init(day: "14", hours: 3, color: Color("Green")),
    .init(day: "15", hours: 2, color: Color("Red")),
    .init(day: "16", hours: 5, color: Color("Orange")),
    .init(day: "16", hours: 3, color: Color("Yellow")),
    .init(day: "17", hours: 3, color: Color("Orange")),
    .init(day: "18", hours: 4, color: Color("Yellow")),
    .init(day: "19", hours: 2, color: Color("Purple")),
    .init(day: "20", hours: 3, color: Color("Green")),
    .init(day: "21", hours: 6, color: Color("Blue")),
    .init(day: "22", hours: 2, color: Color("Green")),
    .init(day: "23", hours: 1, color: Color("Red")),
    .init(day: "24", hours: 3, color: Color("Green")),
    .init(day: "25", hours: 2, color: Color("Red")),
    .init(day: "26", hours: 5, color: Color("Orange")),
    .init(day: "27", hours: 3, color: Color("Yellow")),
    .init(day: "28", hours: 3, color: Color("Orange")),
    .init(day: "29", hours: 4, color: Color("Yellow")),
    .init(day: "30", hours: 2, color: Color("Purple")),
    .init(day: "30", hours: 3, color: Color("Green")),
    .init(day: "31", hours: 6, color: Color("Blue")),
]

struct EvolutionView: View {
    var body: some View {
        VStack {
            Image("")
            Chart{
                ForEach(data) { shape in
                    BarMark(
                        x: .value("Category", shape.day),
                        y: .value("Value", shape.hours)
                    )
                    .foregroundStyle(shape.color)
                }
            }
            .frame(width: 300, height: 200)
            .background()
        }
    }
}

#Preview {
    EvolutionView()
        .modelContainer(for: Item.self, inMemory: true)
}
