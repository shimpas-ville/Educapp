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
    .init(day: "13", hours: 2, color: .blue),
    .init(day: "13", hours: 1, color: .red),
    .init(day: "14", hours: 3, color: .red),
    .init(day: "15", hours: 2, color: .orange),
    .init(day: "16", hours: 5, color: .green),
    .init(day: "16", hours: 3, color: .blue),
    .init(day: "17", hours: 3, color: .blue),
    .init(day: "18", hours: 4, color: .purple),
    .init(day: "19", hours: 2, color: .blue),
    .init(day: "20", hours: 3, color: .green),
    .init(day: "21", hours: 6, color: .blue),
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
        }
    }
}

#Preview {
    EvolutionView()
        .modelContainer(for: Item.self, inMemory: true)
}
