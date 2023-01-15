//
//  ActivitiesPage.swift
//  Anxietease
//
//  Created by Sidarth V on 18/07/21.
//

import SwiftUI

struct SheetView: View {
    @Environment(\.presentationMode) var presentationMode
    @State var rating = 0
    var body: some View {
        VStack{
            Text("Rating")
                .padding()
                .font(.custom("Vibur", size: 50))
                .padding(.top)
            Text("How much better are you feeling")
                .padding()
                .font(.custom("Vibur", size: 30))
                .padding()
                .multilineTextAlignment(.center)
            RatingView(rating: $rating).scaledToFit()
            Button("Press to dismiss") {
                presentationMode.wrappedValue.dismiss()
            }
            .frame(width: 200, height: 50, alignment: .center)
            .background(Color("Teal"))
            .cornerRadius(12)
            .foregroundColor(.white)
            .padding()
            .font(.custom("Vibur-Regular", size: 20))
        }
    }
}

struct ActivitiesPage: View {
    @State var popverShow = false
    @State var rating = 0
    class ViewModel: ObservableObject {
            @Published var Exercise = false
            @Published var Music = false
            @Published var Animal = false
            @Published var Yoga = false
            @Published var Cooking = false
       }
       @ObservedObject var viewModel = ViewModel()
    
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    NavigationLink(destination: Exercise(), isActive: $viewModel.Exercise) {
                        Image("Excercise")
                            .resizable()
                            .scaledToFit()
                            .padding()
                        Text("Exercise").padding()
                       }
                    .frame(width: 390, height: 150, alignment: .center)
                    .background(Color("Exc"))
                    .cornerRadius(12)
                    .foregroundColor(.white)
                    .font(.custom("Lato", size: 20))
                    .padding(.bottom)
                
                    NavigationLink(destination: Music(), isActive: $viewModel.Music){
                        Image("Music")
                            .resizable()
                            .scaledToFit()
                            .padding()
                        Text("Music").padding()
                    }
                    .frame(width: 390, height: 150, alignment: .center)
                    .background(Color("Mus"))
                    .cornerRadius(12)
                    .foregroundColor(.black)
                    .font(.custom("Lato", size: 20))
                    .padding(.bottom)
                    
                    NavigationLink(destination: imageView(), isActive: $viewModel.Animal){
                        Image("Animal")
                            .resizable()
                            .frame(width: 200, height: 200, alignment: .center)
                            .padding()
                        Text("Cute\nAnimal\nPictures")
                            .padding()
                    }
                    .frame(width: 390, height: 150, alignment: .center)
                    .background(Color("Animal"))
                    .cornerRadius(12)
                    .foregroundColor(.black)
                    .font(.custom("Lato", size: 20))
                    .padding(.bottom)
                    
                    NavigationLink(destination: Yoga(), isActive: $viewModel.Yoga){
                        Image("Yoga")
                            .resizable()
                            .scaledToFit()
                            .padding()
                        Text("Yoga").padding()
                    }
                    .frame(width: 390, height: 150, alignment: .center)
                    .background(Color("Yoga"))
                    .cornerRadius(12)
                    .foregroundColor(.white)
                    .font(.custom("Lato", size: 20))
                    .padding(.bottom)
                    
                    NavigationLink(destination: Cooking(), isActive: $viewModel.Cooking){
                        Image("Cooking")
                            .resizable()
                            .scaledToFit()
                            .padding()
                        Text("Cooking").padding()
                    }
                    .frame(width: 390, height: 150, alignment: .center)
                    .background(Color("Cooking"))
                    .cornerRadius(12)
                    .foregroundColor(.black)
                    .font(.custom("Lato", size: 20))
                    .padding(.bottom)
                }
                Text("")
                    .frame(maxWidth: .infinity)
            }.navigationTitle("Activities")
            .onAppear{
                if(viewModel.Exercise){
                    popverShow = true
                }
                if(viewModel.Music){
                    popverShow = true
                }
                if(viewModel.Animal){
                    popverShow = true
                }
                if(viewModel.Yoga){
                    popverShow = true
                }
                if(viewModel.Cooking){
                    popverShow = true
                }
            }
            .popover(isPresented: $popverShow) {
                SheetView()
            }
        }
    }
}

struct ActivitiesPage_Previews: PreviewProvider {
    static var previews: some View {
        ActivitiesPage()
    }
}
