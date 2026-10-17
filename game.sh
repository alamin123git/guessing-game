#!/bin/bash

echo "=== সংখ্যা অনুমান খেলায় স্বাগতম! ==="
echo "আমি ১ থেকে ১০০ এর মধ্যে একটি সংখ্যা ভেবেছি।"

secret_number=$(( ( RANDOM % 100 )  + 1 ))
attempts=0

while true; do
    read -p "আপনার অনুমান করা সংখ্যাটি লিখুন: " guess
    ((attempts++))

    if ! [[ "$guess" =~ ^[0-9]+$ ]]; then
        echo "❌ অনুগ্রহ করে একটি বৈধ সংখ্যা দিন!"
        continue
    fi

    if [ $guess -lt $secret_number ]; then
        echo "আরেকটু বড় সংখ্যা চেষ্টা করুন! ⬆️"
    elif [ $guess -gt $secret_number ]; then
        echo "আরেকটু ছোট সংখ্যা চেষ্টা করুন! ⬇️"
    else
        echo "🎉 অভিনন্দন! আপনি $attempts বারে সঠিক সংখ্যাটি ধরে ফেলেছেন!"
        break
    fi
done
