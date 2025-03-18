# assignment_1_word_frequency

So the assignment is to count the frequency of the most repeated words in the sentence of the list.

Step 1: Selecting each index of the list (lst) with lowercase because the words can be in capital letter also so we want them to be treated same.

Step 2: Split the sentence into words:
Using of a built in function split() , it splits the sentence at every space (' ') and stores each word as an element in the list words.
for instance the words look like (words is a list that holds multiple String values behaves as array):
["this", "is", "a", "really", "really", "really", "cool", "experiment", "really"]

Step 3: Create a map to store word counts
I have used maps as it will store the data in pairs as key value, which will help to store the occurance of each words.

Map<String, int> wordCount = {};
for (String word in words) {
wordCount[word] = (wordCount[word] ?? 0) + 1;
}

wordCount[word] = (wordCount[word] ?? 0) + 1;
This implies that:
If wordCount[word] exists, use its current value.
If wordCount[word] does not exist means null, use 0 instead.

then the wordCount looks like this
{
"this": 1,
"is": 1,
"a": 1,
"really": 4,
"cool": 1,
"experiment": 1
}

Step 4: Find the maximum frequency
Once the map is built, we find the highest count and store all words with that count:

int maxCount = 0;
for (int count in wordCount.values) {
if (count > maxCount) {
maxCount = count;
}
}

First iteration:
count = 1 (this is the count of the word "this").
Since 1 > 0 (the initial value of maxCount), maxCount is updated to 1.
Now, maxCount = 1.

Second iteration:
count = 1 (this is the count of the word "is").
Since 1 is not greater than maxCount (which is currently 1), maxCount remains 1.
Now, maxCount = 1.

and so on.

Step 5: Find all words that appear with maximum frequency using a for loop

List<String> mostFrequentWords = [];
for (var entry in wordCount.entries) {
if (entry.value == maxCount) {
mostFrequentWords.add(entry.key);
}
}

wordCount.entries: Provides a list of key-value pairs from the wordCount map.
entry: Represents each key-value pair (where entry.key is the word and entry.value is the count).
if (entry.value == maxCount): Compares the count of each word with the maxCount.
mostFrequentWords.add(entry.key): If the word’s count matches maxCount, the word is added to the mostFrequentWords list.

wordCount = {
"this": 1,
"is": 1,
"a": 1,
"really": 4,
"cool": 1,
"experiment": 1
}
maxCount = 4
The loop iterates through the wordCount.entries, and since "really" has the count of 4 (which is the maxCount), it is added to the mostFrequentWords list.

Step 6: Print the most frequent words
print("Most frequent words: ${mostFrequentWords.join(', ')} with $maxCount occurrences.");

mostFrequentWords is a list that contains all the words that have the highest frequency.
The join(', ') function is used to combine all the words in the mostFrequentWords list into a single string, separated by commas and spaces.
For instance, if mostFrequentWords contains ["really"], join(', ') will produce "really". If there were multiple words like ["really", "it"], it would produce "really, it".

