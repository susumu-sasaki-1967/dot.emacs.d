;; package install
;;   M-x package-list-packages

;;  »  Warning (files): Missing ‘lexical-binding’ cookie in "~/.emacs.d/init.el".
;; You can add one with ‘M-x elisp-enable-lexical-binding RET’.
;; See ‘(elisp)Selecting Lisp Dialect’ and ‘(elisp)Converting to Lexical Binding’
;; for more information.
(when (require 'warnings nil t)
  (add-to-list 'warning-suppress-log-types '(files missing-lexbind-cookie)))

;;
;; hostごとの設定があれば読み込む
;;
(setq init_host (concat "~/.emacs.d/local/init_" (system-name) ".el"))
(if (file-exists-p init_host)
    (load-file init_host))

;;
;; パッケージ管理(package.el)の設定
;;
(require 'package)
;;(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

;;
;; init-loader
;;
(require 'init-loader)
(setq init-loader-show-log-after-init 'error-only)
(init-loader-load "~/.emacs.d/inits")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(helm init-loader markdown-preview-mode gnu-elpa-keyring-update adoc-mode markdown-mode sql-indent php-mode)))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family #("ＭＳ ゴシック" 0 7 (charset cp932-2-byte)) :foundry "outline" :slant normal :weight normal :height 120 :width normal)))))
