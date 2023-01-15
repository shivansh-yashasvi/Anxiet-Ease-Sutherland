//
//  Music.swift
//  Anxietease
//
//  Created by Sidarth V on 18/07/21.
//

import SwiftUI

struct Music: View {
    var body: some View {
        ScrollView{
            Text("").frame(maxWidth: .infinity)
            VStack{
                ZStack{
                    Link(destination: URL(string: "https://www.youtube.com/watch?v=DWcJFNfaw9c")!) {
                        Image("MusicThumbnail1")
                            .scaledToFit()
                    }
                    
                }.frame(width: 390, height: 220, alignment: .center)
                .cornerRadius(20)
                ZStack{
                    Color("Animal")
                    Text("This playlist contains the smoothest lofi hip hop beats, perfect to help you chill or fall asleep.Lo-fi helps you relax and focus.")
                        .font(.custom("Lato", size: 15))
                        .padding()
                }.frame(width: 370, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .cornerRadius(20)
                .padding(.init(top: 0, leading: 10, bottom: 10, trailing: 10))
                ZStack{
                    Link(destination: URL(string: "https://www.youtube.com/watch?v=0Tmo3KIH31c")!) {
                        Image("MuiscThumbnail2")
                            .scaledToFit()
                    }
                    
                }.frame(width: 390, height: 220, alignment: .center)
                .cornerRadius(20)
                ZStack{
                    Color("Orangeish")
                    Text("This playlist contains specifically curated classical music to soothe your nerves when needed.")
                        .font(.custom("Lato", size: 15))
                        .padding()
                }.frame(width: 370, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .cornerRadius(20)
                .padding(.init(top: 0, leading: 10, bottom: 10, trailing: 10))
                HStack{
                ZStack{
                Color("Mus")
                Text("Releasing feel-good dopamine")
                    .font(.custom("Lato", size: 20))
                    .padding()
                    .multilineTextAlignment(.center)
                }.frame(width: 150, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .cornerRadius(20)
                .padding()
                ZStack{
                Color("Mus")
                Text("Improves our mood")
                    .font(.custom("Lato", size: 20))
                    .padding()
                    .multilineTextAlignment(.center)
                }.frame(width: 150, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .cornerRadius(20)
                .padding()
                }
                Image("MusicPage")
            }
        }.navigationTitle("Music")
    }
}

struct Music_Previews: PreviewProvider {
    static var previews: some View {
        Music()
    }
}
