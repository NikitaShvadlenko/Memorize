import Foundation

struct EmojiManager {

    private var emojiProvider: EmojiProviderProtocol?
    private var animals: String
    private var food: String
    private var activity: String

    init(emojiProvider: EmojiProviderProtocol) {
        self.emojiProvider = emojiProvider
        self.animals = emojiProvider.fetchAnimals()
        self.food = emojiProvider.fetchFood()
        self.activity = emojiProvider.fetchActivity()
    }

    public func allEmojisFor(_ collection: EmojiType) -> [String] {
        var result: [String] = []

        switch collection {
        case .animals:
            for emoji in animals {
                result.append(String(emoji))
            }
        case .food:
            for emoji in food {
                result.append(String(emoji))
            }
        case .activity:
            for emoji in activity {
                result.append(String(emoji))
            }
        }
        return result
    }
}

enum EmojiType {
    case animals
    case food
    case activity
}
