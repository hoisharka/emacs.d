;;; init.el --- emace configuration file
;;; Commentary:
;;; Code:

(require 'package)
;; 이맥스를 시작할 때 설치된 패키지를 활성화할지 여부.
;; 활성화를 막고 package-initialize 함수로 활성화 함.
(setq package-enable-at-startup nil)
;; package-crchives 재정의
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
			 ("melpa" . "https://melpa.org/packages/")
			 ("melpa-stable" . "http://stable.melpa.org/packages/")
                         ("org" . "https://orgmode.org/elpa/")))
(package-initialize)

(prefer-coding-system 'utf-8)

;; fetch the list of packages available
(unless package-archive-contents
  (package-refresh-contents))

;; Bootstrap 'use-package'
(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(org-babel-load-file (expand-file-name "~/.emacs.d/myinit.org"))

(provide 'init)
;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (ob-async emmet-mode js2-refactor ac-js2 yaml-mode yml shell-pop beacon git-timemachine git-gutter magit cider-hydra paredit ace-window adaptive-wrap ov counsel yasnippet-snippets which-key web-mode use-package try org-plus-contrib org-bullets org multiple-cursors material-theme markdown-mode leuven-theme js2-mode htmlize google-translate flycheck elpy dracula-theme better-defaults))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(aw-leading-char-face ((t (:inherit ace-jump-face-foreground :height 3.0)))))
