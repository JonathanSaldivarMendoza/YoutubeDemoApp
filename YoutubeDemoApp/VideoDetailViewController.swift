//
//  VideoDetailViewController.swift
//  YoutubeDemoApp
//
//  Created by Jonathan Saldivar on 11/08/17.
//  Copyright © 2017 JonathanSaldivar. All rights reserved.
//

import UIKit

class VideoDetailViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var webViewConstrain: NSLayoutConstraint!
    var selectedVideo:Video?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        if let vid = self.selectedVideo {
        
            self.titleLabel.text = vid.videoTitle
            self.descriptionLabel.text = vid.VideoDecripton
            
            let width = view.frame.size.width
            let height = width / 400 * 180
            self.webViewConstrain.constant = height
            
            let videoEmbedString = "<html><head><style type=\"text/css\">body {background-color: transparent;color: white;}</style></head><body style=\"margi n:0\"><iframe frameBorder=\"0\" height=\"" + String(describing: height) + "\" width=\"" + String(describing: width) + "\" src=\"https://www.youtube.com/embed/" + vid.videoID + "?showinfo=0&modestbranding=1&frameborder=0&rel=0\"></iframe></body></html>"
            print("esta pendejada es: \(String(describing: height))")
            
            webView.loadHTMLString(videoEmbedString, baseURL: nil)
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
