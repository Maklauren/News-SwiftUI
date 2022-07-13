//
//  WebView.swift
//  News-SwiftUI
//
//  Created by Павел Черноок on 13.07.22.
//

import Foundation
import WebKit
import SwiftUI

struct WebView: UIViewRepresentable {
    
    let urlString: String?
    
    func makeUIView(context: Context) -> some UIView {
        let webview = WKWebView()
        if let urlString = urlString {
            if let url = URL(string: urlString) {
                let request = URLRequest(url: url)
                webview.load(request)
                return webview
            }
        }
        return WKWebView()
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
}
