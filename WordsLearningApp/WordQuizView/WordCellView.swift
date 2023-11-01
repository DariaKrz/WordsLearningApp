//
//  WordView.swift
//  WordsLearningApp
//
//  Created by Дарья Кукурудза on 01.11.2023.
//

import SwiftUI

struct WordCellView: View {
    
 //   @State var word: Word
    
    @State var word = Word(title: "estimated",
                            example: "Unless I'm mistaken, the ... cost of the project has doubted.",
                            form: "adjective",
                            translation: "допустимий, ймовірний",
                            exampleTranslation: "Якщо не помиляюсь, то ймовірна вартість проекту подвоїлась.",
                            repetition: 4)
    
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Image(systemName: "house.fill")
                        .foregroundColor(.black)
                        .imageScale(.large)
                    
                    ProgressView(value: 0.2)
                        .accentColor(.black)
                        .padding(.trailing, 10)
                    
                    Text("20/100")
                        .font(.footnote)
                }
                .padding(.top, 50)
                
    
                VStack(alignment: .leading) {
                    ProgressView(value: 0.7)
                        .accentColor(.black)
                        .frame(maxWidth: 100)
                        .padding(.top, 25)
                    
                    Text(word.example)
                        .foregroundColor(.black)
                        .font(.system(size: 25, weight: .semibold))
                        .padding(.top, 10)
                        
                    Text(word.form)
                        .foregroundColor(.black)
                        .font(.footnote)
                        .padding(2)
                    
                    TextField("Enter the word", text: .constant(""))
                        .foregroundColor(.gray)
                        .autocapitalization(.none)
                        .accentColor(.black)
                        .padding(.top, 20)

                }
                .padding()
                .frame(maxWidth: .infinity)
                .shadow(radius: 20)
            //    .background(.cyan)
                
                VStack(alignment: .leading) {
                    
                    HStack {
                        Text(word.translation)
                            .foregroundColor(.black)
                            .font(.system(size: 15, weight: .semibold))
                        .padding(.leading, 2)
                        
                        Spacer()
                    }
                        
                    Text(word.exampleTranslation)
                        .foregroundColor(.black)
                        .font(.subheadline)
                        .padding(2)
       
                }
                .padding()
                .frame(maxWidth: .infinity)
                .shadow(radius: 20)
              //  .background(Color.cyan)
                
                Spacer()
            }
            
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
//        .background(
//            LinearGradient(colors: [.cyan, .indigo], startPoint: .topLeading, endPoint: .bottomTrailing)
//        )
        .ignoresSafeArea()
    }
}

#Preview {
    WordCellView()
}
