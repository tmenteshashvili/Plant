

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            SearchView()
                .tabItem {
                    Text("Search")
                    Image(systemName: "magnifyingglass")
                }
            
            ShelfView()
                .tabItem {
                    Text("Shelf")
                    Image(systemName: "tree")
                }
            ProfileView()
                .tabItem {
                    Text("Profile")
                    Image(systemName: "person")
                }
        }
        .accentColor(Color("TabBarColor"))
    }
}

#Preview {
    MainView()
}
