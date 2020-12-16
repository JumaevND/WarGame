//
//  ContentView.swift
//  WarGame
//
//  Created by Nuriddin Jumaev on 12/12/20.
//

import SwiftUI

struct ContentView: View {
    //variable
    @State private var runNum1 = 2
    @State private var runNum2 = 3
    @State private var scorePlayer = 0
    @State private var scoreCPU = 0
    
    //ui
    var body: some View {
        ZStack{
            //background
            Image("background")
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack{
            //logo
                Spacer()
                Image("logo")
                Spacer()
            //cards
                HStack{
                    Spacer()
                    Image("card" + String(runNum1))
                    Spacer()
                    Image("card" + String(runNum2))
                    Spacer()
                }
            //deal button
                Spacer()
                Button(action: {
                
                    //Ramdomize
                    self.runNum1 = Int.random(in: 2...14)
                    self.runNum2 = Int.random(in: 2...14)
                    
                    //Update score
                    if self.runNum1 > self.runNum2 {
                        self.scorePlayer += 1
                    }else if self.runNum2 > self.runNum1{
                        self.scoreCPU += 1
                    }
                    
                }, label: {
                    Image("dealbutton").renderingMode(.original)

                })
                
                Spacer()
                HStack{
                    Spacer()
                //Player data
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text(String(scorePlayer))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                //CPU data
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text(String(scoreCPU))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                }
                Spacer()
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
