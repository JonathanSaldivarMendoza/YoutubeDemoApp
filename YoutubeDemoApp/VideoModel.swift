//
//  VideoModel.swift
//  YoutubeDemoApp
//
//  Created by Jonathan Saldivar on 10/08/17.
//  Copyright © 2017 JonathanSaldivar. All rights reserved.
//

import UIKit

class VideoModel: NSObject {
    
    func getVideos() -> [Video] {
        
        var videos = [Video]()
        
        let video1 = Video()
        video1.videoID = "AC2O1q96OMw"
        video1.videoTitle = "ULTRA MÉXICO  ¡ESTO NOS ESPERA! REGALO BOLETOS | Festival Passport"
        video1.VideoDecripton = "Si te gustó este video dale like y no olvides suscribirte a mi canal."
        
        videos.append(video1)
        
        let video2 = Video()
        video2.videoID = "0-ZqF6Psl_0"
        video2.videoTitle = "ULTRA MÉXICO  ¡ESTO NOS ESPERA! REGALO BOLETOS | Festival Passport"
        video2.VideoDecripton = "Si te gustó este video dale like y no olvides suscribirte a mi canal."
        
        videos.append(video2)
        
        let video3 = Video()
        video3.videoID = "Dd0Zc-19xCw"
        video3.videoTitle = "ULTRA MÉXICO  ¡ESTO NOS ESPERA! REGALO BOLETOS | Festival Passport"
        video3.VideoDecripton = "Si te gustó este video dale like y no olvides suscribirte a mi canal."
        
        videos.append(video3)
        
        let video4 = Video()
        video4.videoID = "AC2O1q96OMw"
        video4.videoTitle = "ULTRA MÉXICO  ¡ESTO NOS ESPERA! REGALO BOLETOS | Festival Passport"
        video4.VideoDecripton = "Si te gustó este video dale like y no olvides suscribirte a mi canal."
        
        videos.append(video4)
        
        let video5 = Video()
        video5.videoID = "AC2O1q96OMw"
        video5.videoTitle = "ULTRA MÉXICO  ¡ESTO NOS ESPERA! REGALO BOLETOS | Festival Passport"
        video5.VideoDecripton = "Si te gustó este video dale like y no olvides suscribirte a mi canal."
        
        videos.append(video5)
        return videos
    }

}
