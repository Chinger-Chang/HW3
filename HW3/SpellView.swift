//
//  SpellView.swift
//  HW3
//
//  Created by User15 on 2020/5/20.
//  Copyright © 2020 test. All rights reserved.
//

import SwiftUI

struct SpellView: View {
    @Binding var name: String
    @Binding var gender: Bool
    var selectDate: String
    @Binding var housePick: Int
    @Binding var profilePick: Int
    @Binding var age: Int
    @State private var learnspell = false
    @State private var episode = 0
    @State private var want = 0.0
    let houses=["葛萊芬多", "赫夫帕夫","雷文克勞","史萊哲林"]
    let profiles=["NO.1", "NO.2","NO.3","NO.4","NO.5","NO.6","NO.7","NO.8"]
    
    var body: some View {
        VStack(spacing:20){
            ZStack(alignment:.leading){
            Image(houses[housePick])
            .resizable()
            .scaledToFit()
            //.frame(width: 450, height: 400)
            .opacity(0.5)
            .cornerRadius(20)
            HStack(spacing:30){
            Image(profiles[profilePick])
            .resizable()
            .scaledToFit()
            .frame(width: 150, height: 150)
            .cornerRadius(20)
            .padding(20)
                VStack(alignment:.leading,spacing:15){
                    Text("姓名:\(name)")
                    .font(Font.custom("GillSans-Bold", size: 20))
                    .foregroundColor(Color.black)
                    .bold()
                if(gender)
                    {
                    Text("性別:女")
                    .font(Font.custom("GillSans-Bold", size: 20))
                    .foregroundColor(Color.black)
                    .bold()
                    }
                else{
                    Text("性別:男")
                    .font(Font.custom("GillSans-Bold", size: 20))
                    .foregroundColor(Color.black)
                    .bold()
                        }
                    Text("歲數:\(age)")
                    .font(Font.custom("GillSans-Bold", size: 20))
                    .foregroundColor(Color.black)
                    .bold()
                Text("生日:\(selectDate)")
                .font(Font.custom("GillSans-Bold", size: 20))
                .foregroundColor(Color.black)
                .bold()
                        }
                    }
                }
            Text("想學咒語嗎？\(Int(want))")
                .foregroundColor(Color(red: 101/255, green: 195/255, blue: 159/255))
                .font(Font.custom("GillSans-Bold", size: 23))
             WantSlider(want: self.$want)
            if(want>4)
            {
                EpisodePicker(episode: self.$episode)
                Button(action: {
                        self.learnspell = true
                }) {
                    HStack{
                    Image(systemName:"wand.and.stars")
                        .resizable()
                        .scaledToFit()
                        .frame(width:50, height:100)
                    Text("去學咒語嘍!!!")
                    .font(Font.custom("GillSans-Bold", size: 20))
                    .foregroundColor(Color(red: 0/255, green: 122/255, blue: 122/255))
                    Image(systemName:"wand.and.stars")
                    .resizable()
                    .scaledToFit()
                    .frame(width:50, height:100)
                    }
                    .overlay(RoundedRectangle(cornerRadius: 50)
                    .stroke(Color(red: 0/255, green: 87/255, blue: 87/255),lineWidth: 5))
                }.buttonStyle(PlainButtonStyle())
                .sheet(isPresented: self.$learnspell) {
                           SpellDetailView(episode: self.$episode)
                       }
                }
            }.padding(20)
        }
    }



struct SpellView_Previews: PreviewProvider {
    static var previews: some View {
        SpellView(name: .constant("12"), gender: .constant(true), selectDate:"12", housePick: .constant(2), profilePick: .constant(1),age: .constant(1))
    }
}

struct EpisodePicker: View {
    @Binding var episode: Int
    let episodes=["I", "II","III","IV","V","VI","VII"]
    var housesimage=["harrypottermovie1", "harrypottermovie2","harrypottermovie3","harrypottermovie4", "harrypottermovie5","harrypottermovie6","harrypottermovie7"]
    var body: some View {
        VStack{
        Picker("學院",selection: self.$episode){
            ForEach(0 ..< episodes.count) { (index) in
                Text(self.episodes[index])
            }
        }.pickerStyle(SegmentedPickerStyle())
        Image(housesimage[self.episode])
            .renderingMode(.original)
            .resizable()
            .scaledToFit()
            .frame(width:250, height:300)
        }
    }
}

struct WantSlider: View {
    @Binding var want: Double
    
    var body: some View {
        Slider(value: $want, in: 0...10,step: 1, minimumValueLabel: Text("0分").foregroundColor(Color(red: 101/255, green: 195/255, blue: 159/255)).font(Font.custom("GillSans-Bold", size: 23)), maximumValueLabel:Text("10分").foregroundColor(Color(red: 101/255, green: 195/255, blue: 159/255)).font(Font.custom("GillSans-Bold", size: 23))){
            Text("")
        }.accentColor(Color(red: 0/255, green: 255/255, blue: 248/255))
    }
}

