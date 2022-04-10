//
//  ViewController.swift
//  kurashiruApp
//
//  Created by 森啓亮 on 2022/04/09.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    let url = URL(string: "https://www.kurashiru.com/")
    override func viewDidLoad() {
        super.viewDidLoad()
        let request = URLRequest(url: url!)
        webView.load(request)
    }


    @IBAction func backButton(_ sender: Any) {
        if self.webView.canGoBack{
            self.webView.goBack()
        }
    }
    
    
    @IBAction func nextButton(_ sender: Any) {
        if self.webView.canGoForward{
            self.webView.goForward()
        }
    }
}

