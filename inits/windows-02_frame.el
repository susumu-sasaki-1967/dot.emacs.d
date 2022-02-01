;; 初期フレームの設定
(setq initial-frame-alist
      (append (list
	       '(width . 86)
	       '(height . 45)
;;	       '(top . 0)
;;	       '(left . 0)
;;	       '(font . "VL Gothic-11")
	       '(font . "Migu 1M-11:antialias=standard")
	       )
	      initial-frame-alist))

;; 新規フレームのデフォルト設定
(setq default-frame-alist initial-frame-alist)


