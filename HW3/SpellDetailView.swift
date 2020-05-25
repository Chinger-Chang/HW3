//
//  SpellDetailView.swift
//  HW3
//
//  Created by User15 on 2020/5/22.
//  Copyright © 2020 test. All rights reserved.
//

import SwiftUI

struct SpellDetailView: View {
    //var spelldetail: spell
    @Binding var episode: Int
    var body: some View {
        ZStack{
            Image("background")
            .resizable()
            //.scaledToFill()
            .edgesIgnoringSafeArea(.all)
            .opacity(0.3)
        ScrollView{
            MusicView()
            part1(episode:self.episode)
            part2(episode:self.episode)
            part3(episode:self.episode)
            part4(episode:self.episode)
            }
        }
    }
    }


struct SpellDetailView_Previews: PreviewProvider {
    static var previews: some View {
        SpellDetailView(episode:.constant(1))
    }
}

struct part1: View {
    var episode: Int
    var body: some View{
        return VStack{
        if (episode==0){
            ForEach(0..<5) { (index) in
               Text("\(episode1[index].name)\n\(episode1[index].description)")
                 .multilineTextAlignment(.center)
                .font(Font.custom("Copperplate-Bold", size: 25))
                .foregroundColor(Color(red: 77/255, green: 77/255, blue: 255/255))
                .padding()
                .background(Color(red: 184/255, green: 184/255, blue: 255/255))
                .cornerRadius(20)
                .padding(8)
                .overlay(RoundedRectangle(cornerRadius: 20)
                .stroke(Color(red: 112/255, green: 0/255, blue: 209/255),lineWidth: 5))
                .padding()
                .contextMenu {
                                Button(action: {}) {
                                    Text("收藏")
                                    Image(systemName: "star.fill")
                                   }
                           }
            }
        }
        else if(episode==1){
            ForEach(0..<9) { (index) in
                Text("\(episode2[index].name)\n\(episode2[index].description)")
                 .multilineTextAlignment(.center)
                .font(Font.custom("Copperplate-Bold", size: 25))
                .foregroundColor(Color(red: 77/255, green: 77/255, blue: 255/255))
                .padding()
                .background(Color(red: 184/255, green: 184/255, blue: 255/255))
                .cornerRadius(20)
                .padding(8)
                .overlay(RoundedRectangle(cornerRadius: 20)
                .stroke(Color(red: 112/255, green: 0/255, blue: 209/255),lineWidth: 5))
                .padding()
                .contextMenu {
                     Button(action: {}) {
                         Text("收藏")
                         Image(systemName: "star.fill")
                        }
                }
                }
            }
        }
    }
}
struct part2: View {
    var episode: Int
    var body: some View{
        return VStack{
        if (episode==2){
            ForEach(0..<8) { (index) in
               Text("\(episode3[index].name)\n\(episode3[index].description)")
                .multilineTextAlignment(.center)
               .font(Font.custom("Copperplate-Bold", size: 25))
               .foregroundColor(Color(red: 77/255, green: 77/255, blue: 255/255))
               .padding()
               .background(Color(red: 184/255, green: 184/255, blue: 255/255))
               .cornerRadius(20)
               .padding(8)
               .overlay(RoundedRectangle(cornerRadius: 20)
               .stroke(Color(red: 112/255, green: 0/255, blue: 209/255),lineWidth: 5))
               .padding()
                .contextMenu {
                     Button(action: {}) {
                         Text("收藏")
                         Image(systemName: "star.fill")
                        }
                }
            }
        }
        else if(episode==3){
            ForEach(0..<8) { (index) in
               Text("\(episode4[index].name)\n\(episode4[index].description)")
                 .multilineTextAlignment(.center)
                .font(Font.custom("Copperplate-Bold", size: 25))
                .foregroundColor(Color(red: 77/255, green: 77/255, blue: 255/255))
                .padding()
                .background(Color(red: 184/255, green: 184/255, blue: 255/255))
                .cornerRadius(20)
                .padding(8)
                .overlay(RoundedRectangle(cornerRadius: 20)
                .stroke(Color(red: 112/255, green: 0/255, blue: 209/255),lineWidth: 5))
                .padding()
                .contextMenu {
                     Button(action: {}) {
                         Text("收藏")
                         Image(systemName: "star.fill")
                        }
                }
                }
            }
        }
    }
}

struct part3: View {
    var episode: Int
    var body: some View{
        return VStack{
        if (episode==4){
            ForEach(0..<13) { (index) in
               Text("\(episode5[index].name)\n\(episode5[index].description)")
                .multilineTextAlignment(.center)
               .font(Font.custom("Copperplate-Bold", size: 25))
               .foregroundColor(Color(red: 77/255, green: 77/255, blue: 255/255))
               .padding()
               .background(Color(red: 184/255, green: 184/255, blue: 255/255))
               .cornerRadius(20)
               .padding(8)
               .overlay(RoundedRectangle(cornerRadius: 20)
               .stroke(Color(red: 112/255, green: 0/255, blue: 209/255),lineWidth: 5))
               .padding()
                .contextMenu {
                     Button(action: {}) {
                         Text("收藏")
                         Image(systemName: "star.fill")
                        }
                }
            }
        }
        else if(episode==5){
            ForEach(0..<8) { (index) in
                Text("\(episode6[index].name)\n\(episode6[index].description)")
                 .multilineTextAlignment(.center)
                .font(Font.custom("Copperplate-Bold", size: 25))
                .foregroundColor(Color(red: 77/255, green: 77/255, blue: 255/255))
                .padding()
                .background(Color(red: 184/255, green: 184/255, blue: 255/255))
                .cornerRadius(20)
                .padding(8)
                .overlay(RoundedRectangle(cornerRadius: 20)
                .stroke(Color(red: 112/255, green: 0/255, blue: 209/255),lineWidth: 5))
                .padding()
                .contextMenu {
                     Button(action: {}) {
                         Text("收藏")
                         Image(systemName: "star.fill")
                        }
                }
                }
            }
        }
    }
}

struct part4: View {
    var episode: Int
    var body: some View{
        return VStack{
        if (episode==6){
            ForEach(0..<14) { (index) in
               Text("\(episode7[index].name)\n\(episode7[index].description)")
                .multilineTextAlignment(.center)
               .font(Font.custom("Copperplate-Bold", size: 25))
               .foregroundColor(Color(red: 77/255, green: 77/255, blue: 255/255))
               .padding()
               .background(Color(red: 184/255, green: 184/255, blue: 255/255))
               .cornerRadius(20)
               .padding(8)
               .overlay(RoundedRectangle(cornerRadius: 20)
               .stroke(Color(red: 112/255, green: 0/255, blue: 209/255),lineWidth: 5))
               .padding()
                .contextMenu {
                     Button(action: {}) {
                         Text("收藏")
                         Image(systemName: "star.fill")
                        }
                }
            }
        }
        }
    }
}






