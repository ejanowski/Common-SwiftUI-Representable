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
    let url: URL?
    let contentFile: String?
    
    public init(url: URL? = nil, contentFile: String? = nil) {
        self.contentFile = contentFile
        self.url = url
    }

    public func makeUIView(context: Context) -> WKWebView {

        return WKWebView()
    }
    
    public func updateUIView(_ webView: WKWebView, context: Context) {
        if let url {
            let request = URLRequest(url: url)
            webView.load(request)
        } else if let contentFile {
            webView.loadHTMLString(contentFile, baseURL: nil)
        }
    }
}
