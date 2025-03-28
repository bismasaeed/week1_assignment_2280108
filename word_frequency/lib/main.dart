void main () {

  List <String> sentances = [
    "This is a Really really is really is cool experiment really",
    "Cute little experiment",
    "Will it work maybe it will work do you think it will it will"
  ];

  for (int a = 0 ; a < sentances.length ; a ++) {

    String aSentance = sentances[a].toLowerCase();
    //print(aSentance);

    List <String> words = aSentance.split(' ');
    //print(words);

    Map <String, int> wordCount = {};

    for (var word in words) {
      wordCount[word] = (wordCount[word] ?? 0) + 1;
    }
    //print(wordCount);

    int maxCount = 0;
    for (var count in wordCount.values) {
      if (count > maxCount) {
        maxCount = count;
      }
    }

    List<String> mostFreqWords = [];
    for (var words in wordCount.entries) {
      if (words.value == maxCount) {
        mostFreqWords.add(words.key);
      }
    }
    //print(mostFreqWords);

    print("in $a , the most frequency words are : ${mostFreqWords.join(", ")} with $maxCount count");
  }

}