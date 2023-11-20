//
//  TimerView-Final.swift
//  Educapp
//
//  Created by Foundation13 on 20/11/23.
//

import SwiftUI


struct TimerView: View {
    @State var timeRemainingNumber = 1500
    @State var timeRemaining = ""
    let timer = Timer
                .publish(every: 1, on: .main, in: .common).autoconnect()

    var body: some View {
        ZStack{
            Circle()
                .fill(.green)
                .frame(width: 350, height: 350)
            Circle()
                .fill(.black)
                .frame(width: 300, height: 300)
            Text("\(timeRemaining)")
                .onReceive(timer) { _ in
                    minus1second()
                }
                .foregroundStyle(.white)
                .fontWeight(.bold)
                .font(.system(size: 72))
        }
    }
    
    func minus1second(){
        if timeRemainingNumber > 0 {
            timeRemainingNumber -= 1
            timeRemaining = "\(timeRemainingNumber/60):\(timeRemainingNumber % 60)"
        }
    }
}


#Preview{
    TimerView()
}
