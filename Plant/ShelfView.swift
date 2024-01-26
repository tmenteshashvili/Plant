

import SwiftUI

struct ShelfView: View {
    var plants: [Plant] = PlantData

    var body: some View {
        
            VStack(spacing: 30.0) {
                Text("Plant shelf")
                    .font(.headline)
                    .fontWeight(.bold)
            
            
            TabView {
                ForEach(plants) { item in
                    PlantView(plent: item)
                    
                }
                
            }
            .tabViewStyle(PageTabViewStyle())

        }

    }
}

#Preview {
    ShelfView()
}
