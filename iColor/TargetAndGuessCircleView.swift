//
//  TargetAndGuessCircleView.swift
//  iColor
//
//  Created by Alexander Bowser on 12/30/21.
//


import SwiftUI

import SwiftUI

struct TargetAndGuessCircleView: View {
    @Binding var redTarget: Double
    @Binding var greenTarget: Double
    @Binding var blueTarget: Double
    @Binding var redGuess: Double
    @Binding var greenGuess: Double
    @Binding var blueGuess: Double
    @Binding var pickerLevelIndex: Int
    
    var body: some View {
        ZStack {
            //guess circle
            if pickerLevelIndex == 0 {
                Circle()
                    .fill(Color(red: redGuess, green: greenTarget, blue: blueTarget, opacity: 1.0))
                    .frame(height: 200)
            }
            if pickerLevelIndex == 1 {
                Circle()
                    .fill(Color(red: redGuess, green: greenGuess, blue: blueTarget, opacity: 1.0))
                    .frame(height: 200)
            }
            if pickerLevelIndex == 2 {
                Circle()
                    .fill(Color(red: redGuess, green: greenGuess, blue: blueGuess, opacity: 1.0))
                    .frame(height: 200)
            }
            
            //target circle
            Circle()
                .fill(Color(red: redTarget, green: greenTarget, blue: blueTarget, opacity: 1.0))
                .frame(height: 80)
        }.onAppear {
            self.redGuess = 0.0
            self.greenGuess = 0.0
            self.blueGuess = 0.0
            
        }
    }
}














struct TargetAndCircleView_Previews: PreviewProvider {
    static var previews: some View {
        TargetAndGuessCircleView(redTarget: .constant(0.3), greenTarget: .constant(0.2), blueTarget: .constant(0.7), redGuess: .constant(0.7), greenGuess: .constant(0.4), blueGuess: .constant(0.7), pickerLevelIndex: .constant(2)).previewLayout(.fixed(width: 300, height: 300))
        
    }
}
