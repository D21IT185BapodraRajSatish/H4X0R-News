//
//  WebView.swift
//  H4X0R News
//
//  Created by Raj  on 20/06/22.
//

import Foundation
import SwiftUI
import WebKit
struct WebView:UIViewRepresentable{
    var urlString:String?
    
    func makeUIView(context: Context) ->  WKWebView {
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString{
            if let url = URL(string: safeString){
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
    
    
}
