
import SwiftUI

struct PlantRowView: View {
    
    var plant: Plant
    
    var body: some View {
        HStack(spacing: 20.0) {
                Image(plant.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                    .frame(width: 50, height: 50)

                Text(plant.title)
                .font(.title3)
                .fontWeight(.semibold)

        }
    }
}

#Preview {
    PlantRowView(plant:PlantData[3])
}
