import Foundation

protocol EmojiProviderProtocol {
    func fetchAnimals() -> String
    func fetchFood() -> String
    func fetchActivity() -> String
}

struct EmojiProvider: EmojiProviderProtocol {

    public func fetchAnimals() -> String {
"""
    🐶 🐱 🐭 🐹 🐰 🦊 🐻 🐼 🐻‍❄️\
    🐨 🐯 🦁 🐮 🐷 🐽 🐸 🐵 🙈\
    🙉 🙊 🐒 🐔 🐧 🐦 🐤 🐣 🐥\
    🦆 🦅 🦉 🦇 🐺 🐗 🐴 🦄 🐝\
    🪱 🐛 🦋 🐌 🐞 🐜 🪰 🪲 🪳\
    🦟 🦗 🕷 🕸 🦂 🐢 🐍 🦎 🦖\
    🦕 🐙 🦑 🦐 🦞 🦀 🪸 🐡 🐠\
    🐟 🐬 🐳 🐋 🦈 🐊 🐅 🐆 🦓\
    🦍 🦧 🦣 🐘 🦛 🦏 🐪 🐫 🦒\
    🦬 🐃 🐂 🐄 🐎 🐖 🐏 🐑 🦙\
    🐐 🦌 🐕 🐩 🦮 🐕‍🦺 🐈 🐈‍⬛ 🪶\
    🐓 🦃 🦤
    """
            .removingSpaces()
    }

    public func fetchFood() -> String {
"""
        🍏 🍎 🍐 🍊 🍋 🍌 🍉 🍇 🍓\
        🫐 🍈 🍒 🍑 🥭 🍍 🥥 🥝 🍅\
        🍆 🥑 🥦 🥬 🥒 🌶 🫑 🌽 🥕\
        🫒 🧄 🧅 🥔 🍠 🫘 🥐 🥯 🍞\
        🥖 🥨 🧀 🥚 🍳 🧈 🥞 🧇 🥓\
        🥩 🍗 🍖 🦴 🌭 🍔 🍟 🍕 🫓\
        🥪 🥙 🧆 🌮 🌯 🫔 🥗 🥘 🫕\
        🥫 🍝 🍜 🍲 🍛 🍣 🍱 🥟 🦪
"""
            .removingSpaces()
    }

    public func fetchActivity() -> String {
"""
        ⚽️ 🏀 🏈 ⚾️ 🥎 🎾 🏐 🏉 🥏\
        🎱 🪀 🏓 🏸 🏒 🏑 🥍 🏏 🪃\
        🥅 ⛳️ 🪁 🏹 🎣 🤿 🥊 🥋 🎽\
        🛹 🛼 🛷 ⛸ 🥌 🎿 ⛷ 🏂 🪂\
        🏋️‍♀️ 🤹‍♀️ 🎭 🩰 🎨 🎬 🎤 🎧 🎼\
        🎹 🥁 🪘 🎷 🎺 🪗 🎸 🪕 🎻\
        🎲 ♟ 🎯 🎳 🎮 🎰 🧩
"""
            .removingSpaces()
    }
}
