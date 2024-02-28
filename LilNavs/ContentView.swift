//
//  ContentView.swift
//  LilNavs
//
//  Created by Liellison Menezes on 22/02/24.
//

import SwiftUI
import WebKit

struct ContentView: View {
    @State private var showWebView = false
    @State private var urlString: String = "https://www.google.com"
    
    var body: some View {
        VStack(spacing: 10) {
            WebView(url: URL(string: urlString)!)
                .cornerRadius(10)
                .shadow(color: .black.opacity(0.3), radius: 20.0, x: 5, y: 5)
            TextField("Enter Web Address",text: $urlString)
                .foregroundColor(.white)
                .padding(8)
                .background(Color.gray)
                .cornerRadius(25)
                .controlSize(.small)
                .keyboardType(.URL)
//            HStack{
//                Button(action: {
//                    //webViewStateModel.pageTitle = urlString
//                    //webViewStateModel.goToPage = true
//                }, label: {
//                    Image(systemName: "greaterthan.circle.fill")
//                })
//                .font(.title)
//            }
        }.padding()
    }
}

struct WebView: UIViewRepresentable {
    var url: URL
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    func updateUIView(_ webView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        webView.load(request)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
