//
//  MusicView.swift
//  HW3
//
//  Created by User15 on 2020/5/25.
//  Copyright © 2020 test. All rights reserved.
//

import SwiftUI
import AVFoundation
import MediaPlayer

struct MusicView: View {
    @State var play = true
    
    let player = AVPlayer()
    let commandCenter = MPRemoteCommandCenter.shared()
    var body: some View {
        HStack{
            Text("Harry's Wondrous World ")
                .font(Font.custom("Baskerville-Bold", size: 23))
                .bold()
                .foregroundColor(Color(red: 0/255, green: 0/255, blue: 139/255))
            
            Spacer()
            Button(action: {
                let fileUrl=Bundle.main.url(forResource:"HarrysWorld",withExtension: "mp3")
                let playerItem = AVPlayerItem(url: fileUrl!)
                self.player.replaceCurrentItem(with: playerItem)
                self.play.toggle()
                if self.play{
                    self.player.pause()
                }
                else{
                    self.player.play()
                }
                self.commandCenter.playCommand.addTarget {  event in
                    if self.player.rate == 0.0 {
                        self.player.play()
                        return .success
                    }
                    return .commandFailed
                }
                
                self.commandCenter.pauseCommand.addTarget {  event in
                    if self.player.rate == 1.0 {
                        self.player.pause()
                        return .success
                    }
                    return .commandFailed
                }
                
            }){
                Image(systemName: play ? "play.circle" : "pause.circle")
                    .resizable()
                    .frame(width:30,height:30)
                    .foregroundColor(Color(red: 105/255, green: 89/255, blue: 205/255))
            }
        }
        .padding(10)
        .background(LinearGradient(gradient: Gradient(colors: [Color(red: 221/255, green: 160/255, blue: 221/255), Color(red: 138/255, green: 43/255, blue: 226/255)]), startPoint: UnitPoint(x: 0.4, y: 0.4), endPoint: UnitPoint(x: 0.4, y: 1)))
        .cornerRadius(50)
    }
}

struct Music_Previews: PreviewProvider {
    static var previews: some View {
        MusicView()
    }
}
