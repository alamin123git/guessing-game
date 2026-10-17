import random

def play_game():
    print("=== সংখ্যা অনুমান খেলায় স্বাগতম! ===")
    print("আমি ১ থেকে ১০০ এর মধ্যে একটি সংখ্যা ভেবেছি।")
    
    secret_number = random.randint(1, 100)
    attempts = 0

    while True:
        try:
            guess = int(input("আপনার অনুমান করা সংখ্যাটি লিখুন: "))
            attempts += 1

            if guess < secret_number:
                print("আরেকটু বড় সংখ্যা চেষ্টা করুন! ⬆️\n")
            elif guess > secret_number:
                print("আরেকটু ছোট সংখ্যা চেষ্টা করুন! ⬇️\n")
            else:
                print(f"🎉 অভিনন্দন! আপনি {attempts} বারে সঠিক সংখ্যাটি ধরে ফেলেছেন!")
                break
        except ValueError:
            print("❌ অনুগ্রহ করে একটি বৈধ সংখ্যা দিন!\n")

if __name__ == "__main__":
    play_game()
