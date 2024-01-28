

import SwiftUI

struct DetailView: View {
    
    var plant: Plant
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .center, spacing: 20.0) {
                    PlantHeaderView(plant: plant)
                    
                    VStack(alignment: .leading, spacing: 20.0) {
                        Text(plant.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                        
                        HStack(spacing: 10.0) {
                            SmallButton(titel: "Beginner friendly", backgroundColor: Color("backg"), textColor: Color("TabBarColor"))
                            SmallButton(titel: "Indoor plant", backgroundColor: Color("backg2"), textColor: Color("txtb"))
                            
                        }
                        
                        Text(plant.description)
                            .multilineTextAlignment(.leading)

                    }
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                }
               
            }
            .edgesIgnoringSafeArea(.top)

        }
    }
}

#Preview {
    DetailView(plant:PlantData[3])
}
