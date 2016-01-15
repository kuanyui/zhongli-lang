;;; 中壢.el --- 用中文寫壢斯波！                     -*- lexical-binding: t; -*-

;; Copyright (C) 2016  kuanyui

;; Author: kuanyui <azazabc123@gmail.com>
;; Keywords: lisp

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; 用中文寫出語意通暢流利的壢斯波程式，簡稱「中壢」。

;;; Code:


(mapc (lambda (x)
        (defalias (cdr x) (car x)))
      '(
        (car    . 寄存器數字的位置部份的內容) ; Contents of the Address part of Register number
        (car    . 頭)
        (cdr    . 尾)
        (cdr    . 寄存器數字的位置接下去的內容) ; Contents of the Decrement part of Register number
        (cons   . 建構)
        (eval   . 求值)
        (eval   . 求出)
        (eval   . 求)
        (quote  . 括號)
        (quote  . 引言)
        (quote  . 不求)
        (quote  . 不要求)
        (quote  . 不求人)
        (quote  . 不要求值)
        (quote  . 不要求我)
        (quote  . 不要求值我)
        (quote  . 拜託不要來求我)
        (function . 把我看成函數然後不要求我)
        (cond   . 情況)
        (list   . 列表)
        (list   . 清單)
        (list   . 購物清單)
        (eq     . 完全相等)
        (equal  . 長相相等)
        (equal  . 相等)
        (array  . 陣列)
        (arrayp . 陣列嗎？)
        (if     . 如)
        (if     . 如果)
        (when     . 當)
        (not    . 不)
        (not    . 非)
        (not    . 不是)
        (not    . 沒有)
        (not    . 並不是)
        (not    . 並沒有)
        (not    . 並非)
        (map    . 地圖)
        (mapcar . 地圖頭)
        (mapconcat . 地圖串接)
        (lambda     . 爛打)
        (lambda     . 賴打)
        (let*    . 令)
        (let*    . 讓)
        (setq   . 賦予)
        (defun  . 定義函數)
        (defmacro  . 定義巨集)
        (interactive . 互動地)
        (interactive . 互動式)
        (provide . 供)
        (provide . 提供)
        (require . 需)
        (require . 需求)
        (require . 我要)
        (nth . 第n個)
        (> . 大於)
        (< . 小於)
        (>= . 大於等於)
        (<= . 小於等於)
        (+ . 加)
        (- . 減)
        (* . 乘)
        (/ . 除)
        (floor . 往下無條件捨去)
        (truncate . 往零無條件捨去)
        (ceiling . 往上無條件進位)
        (round . 四捨五入)
        (random . 隨機吐一個比這小的整數)

        ;; 字串相關
        (format . 格式化)
        (concat . 串接)
        )
      )




(provide '中壢)
;;; 中壢.el ends here
