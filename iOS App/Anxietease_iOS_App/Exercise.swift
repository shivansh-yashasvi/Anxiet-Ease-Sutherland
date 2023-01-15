//
//  Exercise.swift
//  Anxietease
//
//  Created by Sidarth V on 18/07/21.
//

import SwiftUI

struct Exercise: View {
    var body: some View {
        ScrollView{
            VStack{
                ZStack{
                    Link(destination: URL(string: "https://www.youtube.com/watch?v=UItWltVZZmE")!) {
                        Image("Workout1")
                            .scaledToFit()
                    }
                    
                }.frame(width: 390, height: 220, alignment: .center)
                .cornerRadius(20)
                ZStack{
                    Color("Animal")
                    Text("This is a 20 min workout perfect for beginners as it is not very strenuous and can be done without any equipment.")
                        .font(.custom("Lato", size: 15))
                        .padding()
                }.frame(width: 370, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .cornerRadius(20)
                .padding(.init(top: 0, leading: 10, bottom: 10, trailing: 10))
                ZStack{
                    Link(destination: URL(string: "https://www.youtube.com/watch?v=Q2cMMnUuKYQ")!) {
                        Image("Workout2")
                            .scaledToFit()
                    }
                    
                }.frame(width: 390, height: 220, alignment: .center)
                .cornerRadius(20)
                ZStack{
                    Color("LightGray")
                    Text(" This is a great workout for beginners who want to build good overall strength with basic bodyweight exercises. .")
                        .font(.custom("Lato", size: 15))
                        .padding()
                }.frame(width: 370, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .cornerRadius(20)
                .padding(.init(top: 0, leading: 10, bottom: 10, trailing: 10))
                HStack{
                ZStack{
                Color("LightTeal")
                Text("Releasing feel-good endorphins")
                    .font(.custom("Lato", size: 20))
                    .padding()
                    .multilineTextAlignment(.center)
                }.frame(width: 150, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .cornerRadius(20)
                .padding()
                ZStack{
                Color("LightTeal")
                Text("Taking your mind off worries")
                    .font(.custom("Lato", size: 20))
                    .padding()
                    .multilineTextAlignment(.center)
                }.frame(width: 150, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .cornerRadius(20)
                .padding()
                }
                Image("Exercise1")
            }
        }.navigationTitle("Exercise")
    }
}

struct Exercise_Previews: PreviewProvider {
    static var previews: some View {
        Exercise()
    }
}
