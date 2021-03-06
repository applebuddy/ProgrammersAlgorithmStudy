//
//  가장큰수_42746_Lv2.cpp
//  ProgrammersAlgorithmPractice
//
//  Created by MinKyeongTae on 07/10/2019.
//  Copyright © 2019 Min Kyeong Tae. All rights reserved.
//

/// MARK: 가장큰수_42746

// MARK: - 복습 람다정렬 사용 풀이답안
#if 0
#include <string>
#include <vector>
#include <algorithm>

using namespace std;

string solution(vector<int> numbers) {
    vector<string> SV;
    string answer = "";
    for(auto &v: numbers) SV.push_back(to_string(v));
    sort(SV.begin(), SV.end(), [](const string &a, const string &b) {
        return a + b > b + a;
    });
    
    for(auto &v: SV) answer += v;
    answer = answer[0] == '0' ? "0" : answer;
    
    return answer;
}
#endif

/// MARK: - 통과 답안 1) '19. 10. 07.
#if 0
#include <string>
#include <vector>
#include <algorithm>

using namespace std;

class Compare {
public:
    template <class T = string>
    bool operator() (T &a, T &b) const {
        return a+b > b+a;
    }
};

string theGreatestNumber(vector<int> numbers) {
    string answer = "";
    vector<string> Ans;
    for(auto v: numbers) Ans.push_back(to_string(v));
    sort(Ans.begin(), Ans.end(), Compare());
    for(auto v: Ans) answer+=v;
    if(answer.front()=='0') answer = "0";
    return answer;
}
#endif

/// MARK: - 통과 답안 2)
//bool compare(int &a, int &b){
//    string s1 = to_string(a);
//    string s2 = to_string(b);
//    if(s1+s2 < s2+s1) return true;
//    else return false;
//}
//
//string theGreatestNumber2(vector<int> numbers) {
//    string answer = "";
//    sort(numbers.begin(), numbers.end(), compare);
//
//    for(auto n : numbers){
//        answer = to_string(n)+answer;
//    }
//    if(answer[0]=='0') return "0";
//
//    return answer;
//}
