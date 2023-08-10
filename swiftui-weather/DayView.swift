//
//  DayView.swift
//  swiftui-weather
//
//  Created by Ganesh Kumar on 09/08/23.
//

import SwiftUI

struct DayView: View{
    var dayName: String
    var weatherImageName: String
    var temparature: Int
    
    var body: some View {
        VStack {
            Text(dayName)
                .foregroundColor(.white)
            Image(systemName: weatherImageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
            Text("\(temparature)°")
        }
    }
}
