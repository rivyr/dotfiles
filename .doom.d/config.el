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


;; org mode limit refile
(setq org-refile-targets '((nil :maxlevel . 9)
                                (org-agenda-files :maxlevel . 9)))
(setq org-outline-path-complete-in-steps nil)         ; Refile in a single go
(setq org-refile-use-outline-path t)                  ; Show full paths for refiling


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

(map! :keymap 'org-agenda-mode-map
      :nm "TAB" #'org-agenda-goto)


;;override agenda minor mode keys since minor mode is borked 90% of the time anyway
(map! :keymap 'org-agenda-mode-map
      :leader
      :prefix "m"
      :nm "s" 'org-agenda-schedule)

(map! :keymap 'org-agenda-mode-map
      :leader
      :prefix "m"
      :nm "d" 'org-agenda-deadline)

(map! :keymap 'org-agenda-mode-map
      :leader
      :prefix "m"
      :nm "q" 'org-agenda-set-tags)

(map! :keymap 'org-agenda-mode-map
      :leader
      :prefix "m"
      :nm "r" 'org-agenda-refile)

(map! :keymap 'org-agenda-mode-map
      :leader
      :prefix "m"
      :nm "t" 'org-agenda-todo)


;;make SPC-o-a go right to agenda list
(map! :leader
      :prefix "o"
      :n "a" #'org-agenda-list)

;;make SPC-o-t go right to todo list
(map! :leader
      :prefix "o"
      :n "t" #'org-todo-list)


;;make SPC-s save
(map! :leader
      :n "s" #'save-buffer)

;; unset q macro bind
(map! :nmi "q" nil)

;; end keybinds


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

;;display relative line numbers as default
(setq display-line-numbers-type 'relative)
