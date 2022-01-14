;;
;; 文字コード設定
;;
(set-language-environment 'Japanese)    ; 日本語環境
(set-default-coding-systems 'utf-8-unix)    ; UTF-8 が基本
(set-terminal-coding-system 'utf-8-unix)    ; emacs -nw も文字化けしない
(setq default-file-name-coding-system 'utf-8)
;;(setq default-process-coding-system '(utf-8 . utf-8))
(setq default-process-coding-system '(undecided-dos . utf-8-unix))
(prefer-coding-system 'utf-8-unix)


;; ;; 環境依存文字 文字化け対応
;; (set-charset-priority 'ascii 'japanese-jisx0208 'latin-jisx0201
;;                       'katakana-jisx0201 'iso-8859-1 'cp1252 'unicode)
;; (set-coding-system-priority 'utf-8 'euc-jp 'iso-2022-jp 'cp932)
