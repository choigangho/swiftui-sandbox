import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            DayForecast(day: "월", isRainy: false, high: 25, low: 21)
            
            DayForecast(day: "화", isRainy: true, high: 21, low: 17)
            
            DayForecast(day: "수", isRainy: false, high: 24, low: 21)
        }
    }
       
    struct DayForecast: View {
        let day: String
        let isRainy: Bool
        let high: Int
        let low: Int
        
        var iconName: String {
            if isRainy {
                return "cloud.rain.fill"
            } else {
                return "sun.max.fill"
            }
        }
        
        var iconColor: Color {
            if isRainy {
                return Color.blue
            } else {
                return Color.yellow
            }
        }
        
        var body: some View {
            VStack {
                Text(day)
                    .font(Font.headline)
                
                Image(systemName: iconName)               
                    .foregroundStyle(iconColor)
                    .font(Font.largeTitle)
                    .padding(5)
                
                Text("High: \(high)")
                    .fontWeight(Font.Weight.semibold)
                
                Text("Low: \(low)")
                    .fontWeight(Font.Weight.medium)
                    .foregroundStyle(Color.secondary)
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
