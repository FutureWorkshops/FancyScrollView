import SwiftUI

struct BackButton: View {
    let color: Color

    @Environment(\.presentationMode)
    var presentationMode: Binding<PresentationMode>
    
    @State private var hasBeenShownAtLeastOnce: Bool = false

    var body: some View {
        (presentationMode.wrappedValue.isPresented || hasBeenShownAtLeastOnce) ?
            Button(action: { self.presentationMode.wrappedValue.dismiss() }) {
                ZStack {
                    Rectangle()
                        .frame(width: 44, height: 44)
                        .foregroundColor(Color(red: 28/255, green: 28/255, blue: 30/255))
                        .cornerRadius(12)
                        .padding(.horizontal, 16)
                        .opacity(0.4)
                    Image(systemName: "chevron.left")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 20, alignment: .leading)
                        .foregroundColor(color)
                        .padding(.horizontal, 16)
                        .font(Font.body.bold())
                }
            }
            .onAppear {
                self.hasBeenShownAtLeastOnce = true
            }
        : nil
    }
}
