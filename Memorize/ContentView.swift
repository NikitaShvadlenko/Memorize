import SwiftUI
struct ContentView: View {
    @State var emojis = EmojiManager(
        emojiProvider: EmojiProvider()
    ).allEmojisFor(.animals).shuffled()

    var body: some View {
        VStack() {
            Text("Memorize!")
                .font(.largeTitle)
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 80))]) {
                    ForEach(emojis[0..<emojis.count], id: \.self) { emoji in
                        Card(content: emoji).aspectRatio(2/3, contentMode: .fit)
                    }
                }
            }
            themeTab
        }
        .padding()
    }

  private var themeTab: some View {
        HStack {
            Button {
                emojis = EmojiManager(emojiProvider: EmojiProvider()).allEmojisFor(.animals).shuffled()
            } label: {
                VStack {
                    Image(systemName: SFSymbol.pawprint.systemName)
                        .font(.title2)
                    Text(L10n.animals)
                }
            }

            Spacer()

            Button {
                emojis = EmojiManager(emojiProvider: EmojiProvider()).allEmojisFor(.activity).shuffled()
            } label: {
                VStack {
                    Image(systemName: SFSymbol.tShirt.systemName)
                        .font(.title2)
                    Text(L10n.activities)
                }
            }

            Spacer()

            Button {
                emojis = EmojiManager(emojiProvider: EmojiProvider()).allEmojisFor(.food).shuffled()
            } label: {
                VStack {
                    Image(systemName: SFSymbol.takeoutbagAndCupAndStraw.systemName)
                        .font(.title2)

                    Text(L10n.food)
                }
            }
        }
        .font(.subheadline)
        .padding()
    }
}

struct Card: View {
    let content: String
    @State var isFaceUp: Bool = true

    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20)

            if isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 3)
                Text(content).font(.largeTitle)
                    .padding()
            } else {
                shape.fill()
            }
        }
        .foregroundColor(.red)
        .onTapGesture {
            isFaceUp.toggle()
        }
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
