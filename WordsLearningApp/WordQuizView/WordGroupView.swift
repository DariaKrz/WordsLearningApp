//
//  WordGroupView.swift
//  WordsLearningApp
//
//  Created by Дарья Кукурудза on 01.11.2023.
//

import SwiftUI

struct WordGroupView: View {
    @StateObject var manager = WordManager()
    var body: some View {
        TabView {
            ForEach(manager.mockWords, id: \.id) { word in
                WordCellView(word: word)
            }
        }
        .tabViewStyle(.page(indexDisplayMode: .never))
    }
}

#Preview {
    WordGroupView()
}
