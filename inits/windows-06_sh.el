;; shell

;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; ;;;
;;; @ shell                                                         ;;;
;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; ;;;

(require 'shell)
(setq explicit-shell-file-name "bash.exe")
(setq shell-command-switch "-c")
(setq shell-file-name "bash.exe")
(setq explicit-bash.exe-args '("--login" "-i"))

;; (M-! and M-| and compile.el)
;;(setq shell-file-name "bash.exe")
;;(modify-coding-system-alist 'process ".*sh\\.exe" 'utf-8)

