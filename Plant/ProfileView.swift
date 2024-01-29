
import SwiftUI

struct ProfileView: View {
    
    @State private var isShowingAdd: Bool = false

    
    var body: some View {
        NavigationStack {
            ScrollView {
                
                VStack(alignment: .leading ,spacing: 20) {
                    HStack {
                        Image(systemName: "photo.badge.plus.fill")
                            .font(.largeTitle)
                            .foregroundStyle(.secondary)
                        Spacer()
                        Text("Firstname")
                            .font(.title2)
                            .fontWeight(.bold)
                    }
                    .padding()
                    
                    Text("Account".uppercased())
                        .font(.title2)
                        .fontWeight(.bold)
                    
                    SettingsRowView(labelText: "Profile", labelImage: "person")
                    SettingsRowView(labelText: "Password", labelImage: "eye.slash")
                    SettingsRowView(labelText: "Notification", labelImage: "bell")
                    
                    Text("More".uppercased())
                        .font(.title2)
                        .fontWeight(.bold)
                    
                    SettingsRowView(labelText: "Rate & Review", labelImage: "star")
                    SettingsRowView(labelText: "Help", labelImage: "questionmark.circle")
                }
                .padding(.horizontal, 20)
                
            }
            .navigationTitle("Settings")
            .navigationBarItems(
                trailing:
                    Button(action: {
                        isShowingAdd = true
                    }) {
                        Image(systemName: "plus")
                    })
        }
        
    }
}

#Preview {
    ProfileView()
}
