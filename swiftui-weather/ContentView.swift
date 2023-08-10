//
//  ContentView.swift
//  swiftui-weather
//
//  Created by Ganesh Kumar on 09/08/23.
//

import SwiftUI

struct ContentView: View {
    @State var isNight: Bool = false
    var body: some View {
        ZStack {
            backgroundView(isNight: $isNight)
            VStack {
                Text("Sivakasi, TN")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                VStack {
                    Image(systemName: isNight ? "moon.stars.fill" : "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    Text("35°")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundColor(.white)
                }
                Spacer()
                HStack {
                    DayView(dayName: "TUE", weatherImageName: "cloud.sun.fill", temparature: 30)
                    DayView(dayName: "WED", weatherImageName: "cloud.sun.fill", temparature: 30)
                    DayView(dayName: "THU", weatherImageName: "cloud.hail.fill", temparature: 28)
                }
                Button(action: {
                    print("Hello Worlds")
                    isNight.toggle()
                }, label: {
                    Text("Change Time")
                })
                .padding(.all, 10)
                .background(.blue)
                .cornerRadius(50)
                .foregroundColor(.white)
                .font(.system(size: 25, weight: .bold))
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

struct backgroundView: View {
    @Binding var isNight: Bool
    var body: some View {
        LinearGradient(colors: [isNight ? .black : .blue,
                                isNight ? .gray : Color("lightBlue")], startPoint: .topTrailing, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}
