

import SwiftUI

struct PlantView: View {
    
    var plent: Plant
    
    
    var body: some View {
        VStack {
            Image(plent.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 250, height: 300)
                .cornerRadius(30)
            
            
            VStack(alignment: .leading, spacing: 20.0) {
                Text(plent.title)
                    .font(.title3)
                    .fontWeight(.bold)
                
                HStack(spacing: 10) {
                        Image(systemName: "sun.max")
                        Text("Partial sun, shade")
                    }
                    HStack(spacing: 10) {
                        Image(systemName: "sprinkler.and.droplets")
                        Text("Water every 14-21 days")
                    }
                    HStack(spacing: 10) {
                        Image(systemName: "thermometer.sun")
                        Text("Minimum 30° F | -1.1° C")
                    }
                    HStack(spacing: 10) {
                        Image(systemName: "leaf")
                        Text("Propagation by offsets")
                    }
                    HStack(spacing: 10) {
                        Image(systemName: "e.circle")
                        Text("Non-toxic to humans")
                    }
                      
                    
            }
            .padding()

        }
    }
}

#Preview {
    PlantView(plent: PlantData[0])
}
