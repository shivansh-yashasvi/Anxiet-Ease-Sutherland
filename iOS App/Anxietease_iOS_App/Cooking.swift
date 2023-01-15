//
//  Cooking.swift
//  Anxietease
//
//  Created by Sidarth V on 18/07/21.
//

import SwiftUI

struct Cooking: View {
    var body: some View {
        ScrollView{
            Text("")
                .frame(maxWidth: .infinity)
            VStack{
                ZStack{
                    Link(destination: URL(string: "https://www.epicurious.com/")!) {
                        Image("CookingPic1")
                            .scaledToFit()
                    }
                }.frame(width: 390, height: 220, alignment: .center)
                .cornerRadius(20)
                ZStack{
                    Color("Mus")
                    Text("Since 1995, Epicurious has been the ultimate food resource for the home cook, fun cooking videos, and over 33000 recipes.")
                        .font(.custom("Lato", size: 15))
                        .padding()
                }.frame(width: 370, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .cornerRadius(20)
                .padding(.init(top: 0, leading: 10, bottom: 10, trailing: 10))
                ZStack{
                    Link(destination: URL(string: "https://tasty.co/")!) {
                        Image("CookingPic2")
                            .scaledToFit()
                    }
                    
                }.frame(width: 390, height: 220, alignment: .center)
                .cornerRadius(20)
                ZStack{
                    Color("Orangeish")
                    Text("The official home of all things Tasty, the world's largest food network. Search, watch, and cook every single Tasty recipe")
                        .font(.custom("Lato", size: 15))
                        .padding()
                }.frame(width: 370, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .cornerRadius(20)
                .padding(.init(top: 0, leading: 10, bottom: 10, trailing: 10))
                HStack{
                ZStack{
                Color("OffWhite")
                Text("Cooking can clear the head")
                    .font(.custom("Lato", size: 20))
                    .padding()
                    .multilineTextAlignment(.center)
                }.frame(width: 150, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .cornerRadius(20)
                .padding()
                ZStack{
                Color("OffWhite")
                Text("Chopping and stirring are therapeutic")
                    .font(.custom("Lato", size: 20))
                    .padding()
                    .multilineTextAlignment(.center)
                }.frame(width: 150, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .cornerRadius(20)
                .padding()
                }
                Image("CookingPage")
            }
        }.navigationTitle("Cooking")
    }
}

struct Cooking_Previews: PreviewProvider {
    static var previews: some View {
        Cooking()
    }
}
