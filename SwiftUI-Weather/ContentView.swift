//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Selim Güney on 22.09.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.blue, Color("light_blue")]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack(alignment: .center){ //Main
                Text("Warsaw, Poland")
                    .foregroundColor(.white)
                    .font(.system(size: 32, weight: .semibold, design: .default))
                    .padding()
                
                VStack(spacing: 10){
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    Text("24°")
                        .font(.system(size: 70, weight: .semibold))
                        .foregroundColor(.white)
    
                }.padding(.bottom, 40)

                HStack(spacing: 15){
                    WeatherDayView(day_of_week: "TUE", image_name: "sun.max.fill", temperature: 27)
                    WeatherDayView(day_of_week: "WED", image_name: "cloud.fill", temperature: 19)
                    WeatherDayView(day_of_week: "THU", image_name: "cloud.rain.fill", temperature: 11)
                    WeatherDayView(day_of_week: "FRI", image_name: "cloud.snow.fill", temperature: -2)
                    WeatherDayView(day_of_week: "SAT", image_name: "sun.snow.fill", temperature: 8)
                    
                }
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

struct WeatherDayView: View {
    
    var day_of_week: String
    var image_name: String
    var temperature: Int
    var body: some View {
        VStack{
            Text(day_of_week)
                .font(.system(size:28, weight:.semibold))
                .foregroundColor(.white)
            Image(systemName: image_name)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
            Text("\(temperature)°")
                .font(.system(size: 38, weight: .semibold))
                .foregroundColor(.white)
        }
    }
}
