//
//  ContentView.swift
//  HW3
//
//  Created by User15 on 2020/5/19.
//  Copyright © 2020 test. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    @State private var namecompare = ""
    @State private var gender = false
    @State private var selectDate = Date()
    @State private var housePick = 0
    @State private var profilePick = 0
    @State private var age = 20
    @State private var showSecondPage = false
    @State private var showAlert = false
   
    let today = Date()
    let startDate = Calendar.current.date(byAdding: .year,value: -10, to: Date())!
    var year: Int {
        Calendar.current.component(.year, from: selectDate)
    }
    let dateFormatter: DateFormatter = {
       let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .short
       return dateFormatter
    }()
    var body: some View {
        VStack{
            Image("title")
            .resizable()
            .scaledToFit()
            
            Form{
                    Name(name: self.$name)
                    Toggle("", isOn : $gender)
                      .toggleStyle(PurpleTextToggleStyle())
                    ProfilePicker(profile: self.$profilePick)
                    DatePicker("生日", selection: self.$selectDate, in: self.startDate...self.today, displayedComponents: .date)
                    Stepper(value: $age, in: 1...120)
                          {
                              if age == 1
                              {
                                Text("\(age) year old")
                                .fontWeight(.bold)
                                .foregroundColor(Color(red: 0/255, green: 94/255, blue: 255/255))
                                .font(Font.custom("GillSans-Bold", size: 18))
                              }
                              else
                              {
                                Text("\(age) years old")
                                    .fontWeight(.bold)
                                   .foregroundColor(Color(red: 0/255, green: 94/255, blue: 255/255))
                                .font(Font.custom("GillSans-Bold", size: 18))
                                
                              }
                          }
                    HousePicker(house: self.$housePick)
                    //Text(dateFormatter.string(from: selectDate))
            }.padding(10)
            Button(action: {
                if(self.name==self.namecompare) {
                    self.showAlert = true
                }
                else {
                    self.showSecondPage = true
                }
            }) {
                Text("做張自己的學生證")
                .font(Font.custom("GillSans-Bold", size: 25))
                .foregroundColor(Color(red: 255/255, green: 48/255, blue: 48/255))
                     .bold().padding(20)
                .background(Color(red: 255/255, green: 193/255, blue: 193/255))
                .cornerRadius(50)
            }.alert(isPresented: $showAlert) { () -> Alert in
                return Alert(title: Text("沒填名字啦😒"), dismissButton: .destructive(Text("快去填名字!!👋👋").foregroundColor(.red)))
            }
            .sheet(isPresented: self.$showSecondPage) {
                SpellView(name: self.$name, gender: self.$gender,selectDate: self.dateFormatter.string(from: self.selectDate), housePick: self.$housePick, profilePick: self.$profilePick,age: self.$age)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Name: View {
    @Binding var name: String
    
    var body: some View {
        TextField("名字", text: self.$name)/*, onEditingChanged: { (editing) in
            print("onEditingChanged", editing)
        }) {
           print(self.name)
        }*/
            .foregroundColor(Color(red: 81/255, green: 0/255, blue: 255/255))
            .padding()
            .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color(red: 0/255, green: 94/255, blue: 255/255), lineWidth: 5))
    }
}

struct HousePicker: View {
    @Binding var house: Int
    let houses=["葛萊芬多", "赫夫帕夫","雷文克勞","史萊哲林"]
    var housesimage=["house", "background","house","house"]
    var body: some View {
        VStack{
        Picker("學院",selection: self.$house){
            ForEach(0 ..< houses.count) { (index) in
                Text(self.houses[index])
            }
        }.pickerStyle(SegmentedPickerStyle())
        Image(houses[self.house])
            .renderingMode(.original)
            .resizable()
            .scaledToFit()
            .frame(width:280, height:200)
        }
    }
}

struct ProfilePicker: View {
    @Binding var profile: Int
    let profiles=["NO.1", "NO.2","NO.3","NO.4","NO.5","NO.6","NO.7","NO.8"]
    var body: some View {
        VStack{
        Text("選張大頭貼吧！！")
            .foregroundColor(Color(red: 0/255, green: 94/255, blue: 255/255))
            .fontWeight(.bold)
            .font(Font.custom("GillSans-Bold", size: 18))
        Picker("大頭貼",selection: self.$profile){
            ForEach(0 ..< profiles.count) { (index) in
                Text(self.profiles[index])
            }
        }.pickerStyle(SegmentedPickerStyle())
            Image(self.profiles[self.profile])
            .renderingMode(.original)
            .resizable()
            .scaledToFit()
            .frame(width:250, height:250)
        }
    }
}

struct PurpleTextToggleStyle: ToggleStyle {
    var label = ""
    func makeBody(configuration: Self.Configuration) -> some View {
        Toggle(isOn: configuration.$isOn) {
            Text("性別(男/女)")
                .foregroundColor(Color(red: 0/255, green: 94/255, blue: 255/255))
                .fontWeight(.bold)
                .font(Font.custom("GillSans-Bold", size: 18))
        }//.padding(.horizontal)
    }
}

