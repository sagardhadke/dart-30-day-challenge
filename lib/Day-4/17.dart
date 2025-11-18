//* 17. Given map scores = {'A':10,'B':20}, write code to safely get score for key 'C' with default 0. 

void main(){

  Map<String,dynamic> scores = {'A':10,'B':20};
  // scores.addAll({'C' : 0});
  // print(scores);
  int scoreC = scores['C'] ?? 0;
  print(scoreC);

}