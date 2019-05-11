;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here
(map!
    ;; easier window nav
    :n "C-h"   #'evil-window-left
    :n "C-j"   #'evil-window-down
    :n "C-k"   #'evil-window-up
    :n "C-l"   #'evil-window-right)
