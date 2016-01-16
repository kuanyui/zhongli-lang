;;; 中壢.el --- 用中文寫壢斯波！                     -*- lexical-binding: t; -*-

;; Copyleft (?) 2016  ono hiroko

;; Author: ono hiroko <azazabc123@gmail.com>
;; Keywords: lisp

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of WTFPL 2.0

;; This program is distributed in the hope that it will not be useful,
;; so WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

;;; Commentary:

;; 「中壢.el」可以讓你用中文寫出語意通暢流利到沒人看得懂也沒人會除錯的
;; 壢斯波程式，真是太棒了，以後連註解都不用寫了。

;;; Code:

(require 'cl)

(mapc (lambda (x)
        (defalias (cdr x) (car x)))
      '(
        (car         . 寄存器數字的位置部份的內容) ; Contents of the Address part of Register number
        (car         . 頭)
        (cdr         . 尾)
        (cdr         . 寄存器數字的位置接下去的內容) ; Contents of the Decrement part of Register number
        (cons        . 建構)
        (eval        . 求值)
        (eval        . 求出)
        (eval        . 求)
        (quote       . 括號)
        (quote       . 引言)
        (quote       . 不求)
        (quote       . 不求值)
        (quote       . 不求人)
        (quote       . 不要求值)
        (quote       . 不要求我)
        (quote       . 不要求我值)
        (quote       . 不要求值我)
        (quote       . 拜託不要求我值)
        (quote       . 拜託不要求我值)
        (quote       . 拜託不要來求我值)
        (quote       . 拜託千萬不要來求我值)
        (function    . 把我看成函數然後不要求我)
        (push        . 塞進去)
        (pop         . 擠出來)
        (remove      . 移除)
        (cond        . 情況)
        (cond        . 條件)
        (list        . 列表)
        (list        . 清單)
        (list        . 購物清單)
        (identity    . 原封不動)
        (eq          . 完全相等)
        (equal       . 長相相等)
        (equal       . 相等)
        (array       . 陣列)
        (arrayp      . 陣列嗎？)
        (if          . 如)
        (if          . 如果)
        (if          . 詢問)
        (when        . 當)
        (while       . 正當)
        (not         . 不)
        (not         . 非)
        (not         . 不是)
        (not         . 沒有)
        (not         . 並不是)
        (not         . 並沒有)
        (not         . 並非)
        (map         . 地圖)
        (mapcar      . 地圖頭)
        (mapconcat   . 地圖串接)
        (lambda          . 入)
        (lambda          . 爛打)
        (lambda          . 賴打)
        (let*        . 讓)
        (let*        . 設區域變數)
        (let*        . 區域變數)
        (setq        . 設)
        (setq        . 設變數)
        (setq        . 賦值)
        (setq        . 賦予)
        (setq        . 賦予變數)
        (defun       . 定義函數)
        (defun       . 函數)
        (defmacro    . 巨集)
        (defmacro    . 定義巨集)
        (defmacro    . 馬括)
        (defmacro    . 定義馬括)
        (funcall     . 呼叫函數)
        (funcall     . 摳函數)
        (funcall     . 樂趣摳)
        (funcall     . 樂樂摳)
        (funcall     . 爽爽摳)
        (macroexpand . 展開巨集)
        (macroexpand . 展開馬括)
        (macroexpand . 展開括約肌)
        (macroexpand . 撐開括約肌)
        (interactive . 互動地) ; 無效，因為 `interactive' 是special form
        (interactive . 互動式)
        (provide     . 供)
        (provide     . 提供)
        (require     . 需)
        (require     . 需求)
        (require     . 我要)
        (nth         . 第n個)
        (null        . 這是空的)
        (null        . 是空的)
        (length      . 長度)
        (length      . 這玩意的長度)
        (progn       . 跑)
        (prog1       . 跑然後回傳第一個值)
        ;; 數學相關
        (>        . 大於)
        (<        . 小於)
        (>=       . 大於等於)
        (<=       . 小於等於)
        (+        . 加)
        (-        . 減)
        (*        . 乘)
        (/        . 除)
        (floor    . 往下無條件捨去)
        (truncate . 往零無條件捨去)
        (ceiling  . 往上無條件進位)
        (round    . 四捨五入)
        (random   . 隨機吐一個比這小的整數)
        (string-to-number . 字串轉成數字)
        ;; 字串相關
        (format             . 格式化)
        (concat             . 串接)
        (re-search-forward  . 正規往前搜尋)
        (re-search-backward . 正規往後搜尋)
        (string-match       . 這字串有沒有符合這正規？)
        (match-string       . 取得符合的字串)
        (insert             . 插入)
        (insert             . 插入字串)
        ;; 緩衝區相關
        (point     . 游標位置)
        (goto-char . 跳到游標位置)
        ;; 有的沒的
        (message              . 說)
        (message              . 說話)
        (message              . 訊息)
        (message              . 靠北一下)
        (message              . 靠杯一下)
        (error                . 錯誤)
        (error                . 罵髒話)
        (yes-or-no-p          . 請問是否)
        (yes-or-no-p          . 閣下是否)
        (yes-or-no-p          . 敢問閣下是否)
        (yes-or-no-p          . 敢問尊貴的閣下是否)
        (yes-or-no-p          . 敢問尊貴睿智的閣下是否)
        (yes-or-no-p          . 微臣敢問皇上是否)
        (y-or-n-p             . 要不)
        (y-or-n-p             . 是否)
        (read-from-minibuffer . 從迷你緩衝區讀入)
        (read-from-minibuffer . 問使用者)
        (shell-command        . 呼叫殼的指令)
        (sit-for              . 發呆幾秒)
        ;; 設定
        (global-set-key . 全域設定按鍵)
        (kbd . 按鍵)
        )
      )


(setq 是 t)
(setq 好 t)
(setq 否 nil)
(setq 不要 nil)
(setq 空 nil)
(setq 空列表 nil)
(setq 空清單 nil)


(provide '中壢)
;;; 中壢.el ends here
