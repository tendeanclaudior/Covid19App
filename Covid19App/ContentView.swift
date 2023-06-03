//
//  ContentView.swift
//  Covid19App
//
//  Created by Claudio Tendean on 02/06/23.
//

import SwiftUI

struct ContentView: View {
    @State var selectedTab : Int = 1
    var body: some View {
        GeometryReader {
            geo in
            VStack {
                // Top Layout
                TopLayout()
                    .padding(EdgeInsets.init(
                        top: 20,
                        leading: 0,
                        bottom: 0,
                        trailing: 0))
                    .frame(width: geo.size.width)
                    .background(Color("Color1"))
                    .clipShape(RoundedCorner(
                        radius: 30,
                        corners: [.bottomLeft, .bottomRight]))
                
                // Prevention
                ScrollViewPrevention()
                
                // Bottom Tabs
                BottomTabs(selectedTab: self.$selectedTab)
                
                Spacer()
            }
            .edgesIgnoringSafeArea(.all)
        }
    }
}

// Rounded Shape
struct RoundedCorner : Shape {
    var radius : CGFloat = .infinity
    var corners : UIRectCorner = .allCorners
    
    func path(in rect : CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        
        return Path(path.cgPath)
    }
}

struct TopMemu : View {
    var body: some View {
        HStack {
            Button(action: {}) {
                Image(systemName: "text.justifyleft")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .foregroundColor(Color.white)
            }
            
            Spacer()
            
            Button(action: {}) {
                Image(systemName: "bell")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .foregroundColor(Color.white)
            }
        }
        .padding([.leading, .trailing], 30)
        .padding(.top, 20)
    }
}

struct TopTitle : View {
    var body: some View {
        HStack{
            Text("Covid-19")
                .font(.system(
                    size: 24,
                    weight: .bold,
                    design: .rounded))
                .foregroundColor(Color.white)
            Spacer()
            HStack{
                HStack{
                    Image("Bendera")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 20, height: 20)
                        .clipShape(Circle())
                    
                    Text("Indonesia")
                        .font(.headline)
                    Image(systemName: "arrowtriangle.down.fill")
                        .resizable()
                        .frame(width: 10, height: 10)
                        .foregroundColor(Color.secondary)
                }
                .padding()
                .background(Color.white)
                .cornerRadius(20)
            }
            .frame(height: 30)
        }
        .padding([.leading, .trailing], 30)
        .padding(.top, 30)
    }
}

struct Contact : View {
    var body: some View {
        VStack(alignment: .leading, spacing: 15.0){
            Text("Are you feeling sick?")
                .font(.system(
                    size: 22,
                    weight: .semibold,
                    design: .rounded))
                .foregroundColor(Color.white)
            Text("If you feel sick any covid-19 symptoms please call or SMS us immediatly for help")
                .font(.system(
                    size: 12,
                    weight: .medium,
                    design: .default))
                .foregroundColor(Color.indigo)
                .fixedSize(horizontal: false, vertical: true)
            
            HStack(spacing: 15){
                Button(action: {}) {
                    HStack{
                        Spacer()
                        Image(systemName: "phone.fill")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(Color.white)
                        Spacer()
                        Text("Call Now")
                            .font(.system(
                                size: 18,
                                weight: .bold,
                                design: .rounded))
                            .foregroundColor(Color.white)
                        Spacer()
                    }
                }
                .frame(height: 55)
                .background(Color.pink)
                .cornerRadius(30)
                
                Button(action: {}) {
                    HStack{
                        Spacer()
                        Image(systemName: "message.fill")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(Color.white)
                        Spacer()
                        Text("Send SMS")
                            .font(.system(
                                size: 18,
                                weight: .bold,
                                design: .rounded))
                            .foregroundColor(Color.white)
                        Spacer()
                        
                    }
                }
                .frame(height: 55)
                .background(Color.blue)
                .cornerRadius(30)
            }
            .padding(.top, 5)
        }
        .padding([.leading, .trailing], 15)
        .padding(.top, 40)
        .padding(.bottom, 30)
    }
}

struct TopLayout : View {
    var body: some View {
        VStack{
            // Menu
            TopMemu()
            
            // Top Title
            TopTitle()
            
            // Contact
            Contact()
        }
    }
}

struct Prevention : View {
    var body: some View {
        HStack{
            Text("Prevention")
                .font(.system(
                    size: 24,
                    weight: .bold,
                    design: .rounded))
            Spacer()
        }
        .padding([.leading, .trailing], 30)
        .padding(.top, 20)
    }
}

struct Icons: View {
    var body: some View {
        HStack{
            // Icon 1
            VStack(alignment: .center){
                Image("Family")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                Text("Avoid close contact")
                    .font(.system(
                        size: 18,
                        weight: .bold,
                        design: .rounded))
                    .multilineTextAlignment(.center)
                    .fixedSize(horizontal: false, vertical: true)
            }
            
            // Icon 2
            VStack(alignment: .center){
                Image("Washing")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                Text("Clean Your hands often")
                    .font(.system(
                        size: 18,
                        weight: .bold,
                        design: .rounded))
                    .multilineTextAlignment(.center)
                    .fixedSize(horizontal: false, vertical: true)
            }
            
            // Icon 3
            VStack(alignment: .center){
                Image("Masker")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                Text("Wear a facemask")
                    .font(.system(
                        size: 18,
                        weight: .bold,
                        design: .rounded))
                    .multilineTextAlignment(.center)
                    .fixedSize(horizontal: false, vertical: true)
            }
        }
        .padding([.leading, .trailing], 30)
        .padding(.top, 20)
    }
}

struct Banner: View {
    var body: some View {
        GeometryReader{
            geo in
            ZStack{
                ZStack(alignment: .bottomLeading){
                    HStack{
                        Spacer()
                        VStack{
                            Text("Do your own test!")
                                .font(.system(
                                    size: 24,
                                    weight: .bold,
                                    design: .rounded))
                                .foregroundColor(Color.white)
                            Text("Follow the instruction to do your own test")
                                .font(.system(
                                    size: 18,
                                    weight: .medium,
                                    design: .rounded))
                                .foregroundColor(Color.white)
                                .fixedSize(horizontal: false, vertical: true)
                        }
                        .padding()
                        .frame(width: geo.size.width * 0.6, height: 120)
                    }
                    .background(LinearGradient(
                        gradient: Gradient(colors: [.indigo, .purple]),
                        startPoint: .bottom,
                        endPoint: .topTrailing))
                    .cornerRadius(20)
                    
                    HStack{
                        Image("Doctor")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 100, height: 150)
                        Spacer()
                    }
                }
            }
            .padding([.leading, .trailing], 30)
            .padding(.top, 20)
        }
    }
}

struct ScrollViewPrevention: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack{
                Prevention()
                
                // Icon
                Icons()
                
                // Banner
                Banner()
                Spacer()
            }
            .padding(EdgeInsets.init(
                top: 0,
                leading: 0,
                bottom: 150,
                trailing: 0))
        }
    }
}

struct BottomTabs: View {
    @Binding var selectedTab : Int
    var body: some View {
        HStack{
            // Bottom 1
            Button(action: {self.selectedTab = 1}) {
                Image(systemName: "house.fill")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .padding([.leading, .trailing], 0)
                    .foregroundColor(self.selectedTab == 1 ? Color.white : Color.secondary)
                    .padding()
                    .background(self.selectedTab == 1 ? Color("Color1") : Color.white)
                    .cornerRadius(20)
            }
            Spacer()
            // Bottom 2
            Button(action: {self.selectedTab = 2}) {
                Image(systemName: "chart.bar")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .padding([.leading, .trailing], 0)
                    .foregroundColor(self.selectedTab == 2 ? Color.white : Color.secondary)
                    .padding()
                    .background(self.selectedTab == 2 ? Color("Color1") : Color.white)
                    .cornerRadius(20)
            }
            Spacer()
            // Bottom 3
            Button(action: {self.selectedTab = 3}) {
                Image(systemName: "doc.text")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .padding([.leading, .trailing], 0)
                    .foregroundColor(self.selectedTab == 3 ? Color.white : Color.secondary)
                    .padding()
                    .background(self.selectedTab == 3 ? Color("Color1") : Color.white)
                    .cornerRadius(20)
            }
            Spacer()
            // Bottom 3
            Button(action: {self.selectedTab = 4}) {
                Image(systemName: "info.circle.fill")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .padding([.leading, .trailing], 0)
                    .foregroundColor(self.selectedTab == 4 ? Color.white : Color.secondary)
                    .padding()
                    .background(self.selectedTab == 4 ? Color("Color1") : Color.white)
                    .cornerRadius(20)
            }
        }
        .padding([.leading, .trailing], 30)
        .padding()
        .background(Color.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
