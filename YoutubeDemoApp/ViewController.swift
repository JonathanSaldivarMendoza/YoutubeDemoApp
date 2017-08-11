//
//  ViewController.swift
//  YoutubeDemoApp
//
//  Created by Jonathan Saldivar on 10/08/17.
//  Copyright © 2017 JonathanSaldivar. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    var videos: [Video] = []
    var selectedVideo:Video?

    override func viewDidLoad() {
        super.viewDidLoad()
        let model  = VideoModel()
        self.videos = model.getVideos()
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BasicCell")!
        let videotitle = videos[indexPath.row].videoTitle
        let label = cell.viewWithTag(2) as! UILabel
        label.text = videotitle
        //cell.textLabel?.text = videotitle
        let videoThumURLString = "https://i1.ytimg.com/vi/\(videos[indexPath.row].videoID)/sddefault.jpg"
        let videoThmURL = URL(string: videoThumURLString)
        
        if videoThmURL != nil {
            
            let request = URLRequest(url: videoThmURL!)
            let session = URLSession.shared
            
            let datatask = session.dataTask(with: request, completionHandler: { (data, response, error) in
                
                let imageView = cell.viewWithTag(1) as! UIImageView
                imageView.image = UIImage(data: data!)
            })
            
            datatask.resume()
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.selectedVideo = videos[indexPath.row]
        self.performSegue(withIdentifier: "VideoDetailViewController", sender: self)
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return(self.view.frame.size.width / 400) * 180
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let videodetailviewcontroller = segue.destination as! VideoDetailViewController
        videodetailviewcontroller.selectedVideo = selectedVideo

    }
}

