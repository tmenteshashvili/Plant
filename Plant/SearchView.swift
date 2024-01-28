
import SwiftUI

struct SearchView: View {
    @State var searchTerm = ""

    var plants: [Plant] = PlantData
    var filteredPlants: [Plant] {
        guard !searchTerm.isEmpty else { return plants }
        return plants.filter { $0.title.localizedCaseInsensitiveContains(searchTerm) }
    }
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(filteredPlants) { item in
                    NavigationLink(destination: DetailView(plant: item)) {
                        PlantRowView(plant: item)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Plant Library")
            .navigationBarTitleDisplayMode(.inline)
        }
        .searchable(text: $searchTerm, prompt: "Search Plants")
    }
}

#Preview {
    SearchView()
}
