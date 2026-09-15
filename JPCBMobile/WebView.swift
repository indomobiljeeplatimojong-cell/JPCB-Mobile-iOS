import SwiftUI
import WebKit

struct JPCBWebView: UIViewRepresentable {
    let url: URL

    func makeCoordinator() -> Coordinator {
        Coordinator()
    }

    func makeUIView(context: Context) -> WKWebView {
        let configuration = WKWebViewConfiguration()

        let preferences = WKWebpagePreferences()
        preferences.allowsContentJavaScript = true
        configuration.defaultWebpagePreferences = preferences
        configuration.websiteDataStore = .default()

        let webView = WKWebView(
            frame: .zero,
            configuration: configuration
        )

        webView.navigationDelegate = context.coordinator
        webView.allowsBackForwardNavigationGestures = true
        webView.allowsLinkPreview = false
        webView.scrollView.bounces = true

        var request = URLRequest(url: url)
        request.cachePolicy = .useProtocolCachePolicy

        webView.load(request)

        return webView
    }

    func updateUIView(
        _ webView: WKWebView,
        context: Context
    ) {
    }

    final class Coordinator: NSObject, WKNavigationDelegate {

        func webView(
            _ webView: WKWebView,
            didFail navigation: WKNavigation?,
            withError error: Error
        ) {
            print(
                "JPCB WebView navigation error: \(error.localizedDescription)"
            )
        }

        func webView(
            _ webView: WKWebView,
            didFailProvisionalNavigation navigation: WKNavigation?,
            withError error: Error
        ) {
            print(
                "JPCB WebView loading error: \(error.localizedDescription)"
            )
        }

        func webView(
            _ webView: WKWebView,
            decidePolicyFor navigationAction: WKNavigationAction,
            decisionHandler: @escaping (WKNavigationActionPolicy) -> Void
        ) {
            decisionHandler(.allow)
        }
    }
}
