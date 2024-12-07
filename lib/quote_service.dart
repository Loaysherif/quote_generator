import 'dart:math';

class QuoteService {
  static final Map<String, List<Map<String, String>>> _quotesByGenre = {
    "Funny": [
      {
        "quote": "I'm on a seafood diet. I see food and I eat it.",
        "author": "Anonymous"
      },
      {
        "quote":
            "Why don’t skeletons fight each other? They don’t have the guts.",
        "author": "Anonymous"
      },
      {
        "quote": "I'm not arguing, I'm just explaining why I'm right.",
        "author": "Anonymous"
      },
      {
        "quote":
            "Why don’t scientists trust atoms? Because they make up everything.",
        "author": "Anonymous"
      },
      {
        "quote":
            "I told my computer I needed a break, and now it won’t stop sending me Kit-Kats.",
        "author": "Anonymous"
      },
      {
        "quote":
            "Parallel lines have so much in common. It’s a shame they’ll never meet.",
        "author": "Anonymous"
      },
      {
        "quote":
            "I told my wife she was drawing her eyebrows too high. She looked surprised.",
        "author": "Anonymous"
      },
      {
        "quote":
            "I have a lot of growing up to do. I realized that the other day inside my fort.",
        "author": "Zach Galifianakis"
      },
      {
        "quote":
            "A termite walks into the bar and asks, 'Is the bartender here?'",
        "author": "Anonymous"
      },
      {
        "quote": "I don’t suffer from insanity, I enjoy every minute of it.",
        "author": "Anonymous"
      },
    ],
    "Love": [
      {
        "quote": "Love is composed of a single soul inhabiting two bodies.",
        "author": "Aristotle"
      },
      {"quote": "Love recognizes no barriers.", "author": "Maya Angelou"},
      {
        "quote": "To love and be loved is to feel the sun from both sides.",
        "author": "David Viscott"
      },
      {
        "quote": "True love is eternal, infinite, and always like itself.",
        "author": "Honore de Balzac"
      },
      {
        "quote":
            "You don’t love someone because they’re perfect, you love them in spite of their imperfections.",
        "author": "Jodi Picoult"
      },
      {
        "quote": "Where there is love, there is life.",
        "author": "Mahatma Gandhi"
      },
      {
        "quote": "Love is a friendship set to music.",
        "author": "Joseph Campbell"
      },
      {
        "quote":
            "In the end, we will remember not the words of our enemies, but the silence of our friends.",
        "author": "Martin Luther King Jr."
      },
      {
        "quote":
            "Love is not something you look for. Love is something you build.",
        "author": "Unknown"
      },
      {
        "quote": "Love is a choice you make from moment to moment.",
        "author": "Barbara De Angelis"
      },
    ],
    "Inspirational": [
      {
        "quote": "The only way to do great work is to love what you do.",
        "author": "Steve Jobs"
      },
      {
        "quote": "Believe you can and you're halfway there.",
        "author": "Theodore Roosevelt"
      },
      {
        "quote": "The best way to predict the future is to create it.",
        "author": "Abraham Lincoln"
      },
      {
        "quote": "You miss 100% of the shots you don’t take.",
        "author": "Wayne Gretzky"
      },
      {
        "quote":
            "Your time is limited, so don’t waste it living someone else’s life.",
        "author": "Steve Jobs"
      },
      {
        "quote": "Everything you can imagine is real.",
        "author": "Pablo Picasso"
      },
      {
        "quote": "It always seems impossible until it’s done.",
        "author": "Nelson Mandela"
      },
      {
        "quote":
            "Success is not the key to happiness. Happiness is the key to success.",
        "author": "Albert Schweitzer"
      },
      {
        "quote":
            "Don’t wait for the perfect moment. Take the moment and make it perfect.",
        "author": "Unknown"
      },
      {
        "quote":
            "The future belongs to those who believe in the beauty of their dreams.",
        "author": "Eleanor Roosevelt"
      },
    ],
    "Life": [
      {
        "quote": "Life is what happens when you’re busy making other plans.",
        "author": "John Lennon"
      },
      {"quote": "Get busy living or get busy dying.", "author": "Stephen King"},
      {
        "quote": "The purpose of life is not to be happy. It is to be useful.",
        "author": "Ralph Waldo Emerson"
      },
      {
        "quote": "In the end, we only regret the chances we didn’t take.",
        "author": "Lewis Carroll"
      },
      {
        "quote": "Don’t cry because it’s over, smile because it happened.",
        "author": "Dr. Seuss"
      },
      {
        "quote":
            "Life is really simple, but we insist on making it complicated.",
        "author": "Confucius"
      },
      {
        "quote": "Life is either a daring adventure or nothing at all.",
        "author": "Helen Keller"
      },
      {
        "quote":
            "Do not go where the path may lead, go instead where there is no path and leave a trail.",
        "author": "Ralph Waldo Emerson"
      },
      {
        "quote": "The only impossible journey is the one you never begin.",
        "author": "Tony Robbins"
      },
      {
        "quote":
            "Good friends, good books, and a sleepy conscience: this is the ideal life.",
        "author": "Mark Twain"
      },
    ],
    "Motivational": [
      {
        "quote":
            "The only way to achieve the impossible is to believe it is possible.",
        "author": "Charles Kingsleigh"
      },
      {
        "quote": "Do one thing every day that scares you.",
        "author": "Eleanor Roosevelt"
      },
      {
        "quote": "Don’t watch the clock; do what it does. Keep going.",
        "author": "Sam Levenson"
      },
      {
        "quote": "Act as if what you do makes a difference. It does.",
        "author": "William James"
      },
      {
        "quote": "Everything you’ve ever wanted is on the other side of fear.",
        "author": "George Addair"
      },
      {
        "quote":
            "It does not matter how slowly you go as long as you do not stop.",
        "author": "Confucius"
      },
      {
        "quote": "The journey of a thousand miles begins with one step.",
        "author": "Lao Tzu"
      },
      {
        "quote":
            "Success is not final, failure is not fatal: It is the courage to continue that counts.",
        "author": "Winston Churchill"
      },
      {
        "quote": "It always seems impossible until it’s done.",
        "author": "Nelson Mandela"
      },
      {
        "quote": "Your limitation—it's only your imagination.",
        "author": "Unknown"
      },
    ],
    "Wisdom": [
      {"quote": "Wisdom begins in wonder.", "author": "Socrates"},
      {
        "quote": "The only true wisdom is in knowing you know nothing.",
        "author": "Socrates"
      },
      {
        "quote":
            "Knowing others is intelligence; knowing yourself is true wisdom.",
        "author": "Lao Tzu"
      },
      {
        "quote":
            "It is not the strongest of the species that survive, nor the most intelligent, but the one most responsive to change.",
        "author": "Charles Darwin"
      },
      {
        "quote":
            "In seeking wisdom, the first step is silence, the second listening, the third remembering, the fourth practicing, the fifth teaching others.",
        "author": "Solomon Ibn Gabirol"
      },
      {
        "quote": "Time is the most valuable thing a man can spend.",
        "author": "Theophrastus"
      },
      {
        "quote":
            "A fool thinks himself to be wise, but a wise man knows himself to be a fool.",
        "author": "William Shakespeare"
      },
      {
        "quote":
            "The fool doth think he is wise, but the wise man knows himself to be a fool.",
        "author": "William Shakespeare"
      },
      {
        "quote": "The wise man does at once what the fool does finally.",
        "author": "Niccolò Machiavelli"
      },
      {
        "quote": "Knowledge speaks, but wisdom listens.",
        "author": "Jimi Hendrix"
      },
    ],
  };

  static Future<Map<String, String>> getQuoteByGenre(String genre) async {
    await Future.delayed(
        const Duration(milliseconds: 500)); // Simulate network delay
    final quotes = _quotesByGenre[genre] ?? [];
    final randomIndex = Random().nextInt(quotes.length);
    return quotes[randomIndex];
  }
}
