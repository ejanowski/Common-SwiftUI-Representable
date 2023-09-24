//
//  Webview.swift
//
//
//  Created by JANOWSKI Emeric on 24/09/2023.
//

import SwiftUI
import UIKit
import WebKit

public struct WebView: UIViewRepresentable {
    let url: URL
    
    public init(url: URL) {
        self.url = url
    }

    public func makeUIView(context: Context) -> WKWebView {

        return WKWebView()
    }
    
    public func updateUIView(_ webView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        webView.load(request)
    }
}
