
import SwiftUI

struct PlantHeaderView: View {
    var plant: Plant

    var body: some View {
        VStack {
            Image(plant.image)
                .resizable()
                .scaledToFit()
                
        }
    }
}

#Preview {
    PlantHeaderView(plant:PlantData[3])
}
