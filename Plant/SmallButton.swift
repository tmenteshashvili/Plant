

import SwiftUI

struct SmallButton: View {
    var titel: String
    var backgroundColor: Color
    var textColor: Color

    var body: some View {
        
        Text(titel)
            .font(.title3)
            .foregroundColor(textColor)
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(backgroundColor)
            .clipShape(RoundedRectangle(cornerRadius: 25))
        

    }
}

#Preview {
    SmallButton(titel: "Beginner friendly", backgroundColor: Color("backg"), textColor: Color("TabBarColor"))
}
