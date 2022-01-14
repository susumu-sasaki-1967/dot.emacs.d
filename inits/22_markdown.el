;;
;; markdown-mode の設定
;;
;; M-x package-list-package
;; C-s markdown-mode

(setq auto-mode-alist (cons '("\\.md" . markdown-mode) auto-mode-alist))
;; (setq auto-mode-alist
;;       (append '(("\\.md$" . yatex-mode)
;;                 ("\\.txt$" . yatex-mode)) auto-mode-alist))
