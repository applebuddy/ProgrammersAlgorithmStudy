//
//  가장긴팰린드롬_12904_Lv3.swift
//  PGProblemSolving
//
//  Created by MinKyeongTae on 2019/11/21.
//  Copyright © 2019 MinKyeongTae. All rights reserved.
//
/*
 import Foundation

 var Ans = 0

 func manachers(_ S: String) -> Int {
 var R = 0
 var P = 0
 var A = [Int](repeating: 0, count: S.count)
 let arr = Array(S).map { String($0) }
 for i in arr.indices {
     if i <= R { A[i] = min(R - i, A[2 * P - i]) }
     else { A[i] = 0 }
     while (i - A[i] - 1) >= 0, (i + A[i] + 1) < S.count, arr[i - A[i] - 1] == arr[i + A[i] + 1] {
         A[i] += 1
     }

     if R < A[i] + i {
         R = A[i] + i
         P = i
     }
     Ans = Ans < A[i] ? A[i] : Ans
 }

 return Ans
 }

 func theLongestPelindrom(_ s: String) -> Int {
 let arr = Array(s).map { String($0) }
 var str = "@"
 for i in arr.indices {
     str += arr[i]
     str += "@"
 }

 return manachers(str)
 }
 */
