;;
;; asciidoc-mode の設定
;;
;; M-x package-list-package
;; C-s adoc-mode

(autoload 'adoc-mode "adoc-mode" nil t)

(require 'adoc-mode)

(add-to-list
 'auto-mode-alist (cons "\\.adoc\\'" 'adoc-mode))
