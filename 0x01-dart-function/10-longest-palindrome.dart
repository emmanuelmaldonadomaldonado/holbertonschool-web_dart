String longestPalindrome(String s) {
  String longest = "none";

  for (int i = 0; i < s.length; i++) {
    for (int j = i + 1; j <= s.length; j++) {
      String substring = s.substring(i, j);
      if (isPalindrome(substring) && substring.length >= 3) {
        if (substring.length > longest.length) {
          longest = substring;
        }
      }
    }
  }

  return longest;
}

bool isPalindrome(String s) {
  if (s.length < 3) return false;
  return s == s.split('').reversed.join('');
}