;;
;; Python言語の設定
;;
(defun my-python-mode-common-init ()
  (setq indent-tabs-mode t)
  (setq tab-width 4)
  )

(add-hook 'python-mode-hook 'my-python-mode-common-init)
