;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here
;; Keymap states
;; States
    ;; :n  normal
    ;; :v  visual
    ;; :i  insert
    ;; :e  emacs
    ;; :o  operator
    ;; :m  motion
    ;; :r  replace

;; keybinds
(map!
    ;;TODO: fix other missing spacemac equivs
    ;; easier window nav
    :n "C-h"   #'evil-window-left
    :n "C-j"   #'evil-window-down
    :n "C-k"   #'evil-window-up
    :n "C-l"   #'evil-window-right)

;;fix s not saving in agenda mode
(map! :keymap 'org-agenda-mode-map
        :nm "s" #'org-save-all-org-buffers)

;;allow q to quit agenda window
(map! :keymap 'org-agenda-mode-map
        :nm "q" #'quit-window)

;;make SPC-o-a go right to agenda list
(map! :leader
      :prefix "o"
      :n "a" #'org-agenda-list)


;;make SPC-s save
(map! :leader
      :n "s" #'save-buffer)
;; -- end keybinds


;; other settings
;;
;;dired gls
(when (string= system-type "darwin")
  (setq dired-use-ls-dired t
        insert-directory-program "/usr/local/bin/gls"
        dired-listing-switches "-aBhl --group-directories-first"))

;;allow evil escape in more modes
;; available modes normal visual multiedit emacs motion
;; avialable major modes neotree-mode treemacs-mode term-mode vterm-mode
(setq evil-escape-excluded-states '(normal multiedit emacs)
    evil-escape-excluded-major-modes '(neotree-mode treemacs-mode)
    evil-escape-key-sequence "jk"
    evil-escape-delay 0.25)
