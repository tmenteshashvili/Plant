

import SwiftUI

struct SettingsRowView: View {
    var labelText: String
    var labelImage: String
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack{
                Image(systemName: labelImage)
                Text(labelText)
                
            }
        }
        .padding()
    }
}

#Preview {
    SettingsRowView(labelText: "Profile", labelImage: "person")
}
