//
//  Yoga.swift
//  Anxietease
//
//  Created by Sidarth V on 18/07/21.
//

import SwiftUI

struct Yoga: View {
    var body: some View {
        ScrollView{
            Text("").frame(maxWidth: .infinity)
            VStack{
                ZStack{
                    Link(destination: URL(string: "https://www.youtube.com/watch?v=Nw2oBIrQGLo")!) {
                        Image("YogaThumbnail1")
                            .scaledToFit()
                    }
                    
                }.frame(width: 390, height: 220, alignment: .center)
                .cornerRadius(20)
                ZStack{
                    Color("LightTeal")
                    Text("A modern day yoga channel by Sarah Beth Yoga where you can find clear & fuss free yoga videos")
                        .font(.custom("Lato", size: 15))
                        .padding()
                }.frame(width: 370, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .cornerRadius(20)
                .padding(.init(top: 0, leading: 10, bottom: 10, trailing: 10))
                ZStack{
                    Link(destination: URL(string: "https://www.youtube.com/watch?v=inpok4MKVLM")!) {
                        Image("YogaThumbnail2")
                            .scaledToFit()
                    }
                    
                }.frame(width: 390, height: 220, alignment: .center)
                .cornerRadius(20)
                ZStack{
                    Color("Mus")
                    Text("In just 5 minutes you can reset your day in a positive way through meditation.This video will help you kickstart your day in a positive way.")
                        .font(.custom("Lato", size: 15))
                        .padding()
                }.frame(width: 370, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .cornerRadius(20)
                .padding(.init(top: 0, leading: 10, bottom: 10, trailing: 10))
                HStack{
                ZStack{
                Color("Teal")
                Text("Yoga helps reduce stress and anxiety.")
                    .font(.custom("Lato", size: 20))
                    .padding()
                    .multilineTextAlignment(.center)
                }.frame(width: 150, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .cornerRadius(20)
                .padding()
                ZStack{
                Color("Teal")
                Text("Yoga can enhance your overall well-being")
                    .font(.custom("Lato", size: 20))
                    .padding()
                    .multilineTextAlignment(.center)
                }.frame(width: 150, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .cornerRadius(20)
                .padding()
                }
                Image("MusicPage")
            }
        }.navigationTitle("Yoga")
    }
}

struct Yoga_Previews: PreviewProvider {
    static var previews: some View {
        Yoga()
    }
}
