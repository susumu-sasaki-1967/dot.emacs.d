

;; ファイルオープン時のバックアップ（~）の格納ディレクトリ
; emacsが作成するバックアップファイルを特定のフォルダ（例えば ~/Meadow_Backup ）
; におくようにする。
     (setq backup-by-copying t)
     (fset 'make-backup-file-name
	      '(lambda (file)
	       (concat (expand-file-name "~/Emacs_Backup/")
		       (file-name-nondirectory file))
       ))

;オートセーブファイル（mule.txt なら #mule.txt#）も別のディレクトリに
;入れる方法。
;;; where to put save file 
(if (file-exists-p "~/Emacs_AutoSave/")
    (setq auto-save-list-file-prefix "~/Emacs_AutoSave/"))

;; ロックファイル / バックアップファイルを作成しない
(setq create-lockfiles nil)
(setq make-backup-files nil)

;; 終了時に自動バックアップファイルを削除（有効：t、無効：nil）
;;(setq delete-auto-save-files t)
(setq delete-auto-save-files nil)

;; 終了時に自動バックアップファイルを削除（有効：t、無効：nil）
(setq delete-auto-save-files nil)

;; 編集中ファイルの自動バックアップ（有効：t、無効：nil）
(setq backup-inhibited nil)

;; 自動保存ファイルを作成しない
(setq auto-save-default nil)

