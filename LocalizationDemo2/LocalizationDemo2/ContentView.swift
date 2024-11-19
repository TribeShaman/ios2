import SwiftUI

struct ContentView: View {
    @State private var showAlert = false

    var body: some View {
        VStack(spacing: 20) {
            // Obrazek
            Image(NSLocalizedString("image", comment: ""))
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 200)

            // Przycisk
            Button(action: {
                showAlert = true
            }) {
                Text(NSLocalizedString("Information", comment: ""))
                    .font(.title2)
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .alert(isPresented: $showAlert) {
                Alert(
                    title: Text(NSLocalizedString("Information", comment: "")),
                    message: Text(String(format: NSLocalizedString("The faculty is running %i programs on graduate and undergraduate level.", comment: ""), 4)),
                    dismissButton: .default(Text("OK"))
                )
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
