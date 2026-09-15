import SwiftUI

struct ContentView: View {
    private let appURL = URL(
        string: "https://script.google.com/macros/s/AKfycbwvJlMz-3-5hrAFj20HZaiqaucZaEMbmUerEjue-LjzD83r_ZfoNTNfzC1ZLEeVG2Hg8Eg/exec?action=mobile"
    )!

    var body: some View {
        ZStack {
            JPCBWebView(url: appURL)
                .ignoresSafeArea()

            ProgressView()
                .progressViewStyle(.circular)
                .opacity(0)
        }
        .background(Color(.systemBackground))
    }
}
