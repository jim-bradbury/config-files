;; some general information
(setq my-full-name "Jim Bradbury")
(setq my-home-dir "~/")
(menu-bar-mode 0)
(tool-bar-mode 0)
(setq-default column-number-mode t)
(setq-default case-fold-search t)
(setq-default cursor-type 'box)

(setq ediff-split-window-function 'split-window-horizontally)
(setq inhibit-splash-screen t)

(setq split-height-threshold nil
      split-width-threshold nil)

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
    
(setq auto-mode-alist
   '(("\\.asm\\'" . asm-mode)
     ("\\.mac\\'" . asm-mode)
     ("\\.equ\\'" . asm-mode)
     ("\\.S\\'" . asm-mode)
     ("\\.tune\\'" . perl-mode)
     ("\\.symfun\\'" . perl-mode)
     ("\\.pl\\'" . perl-mode)
     ("\\.pm\\'" . perl-mode)
     ("\\.lst\\'" . asm-mode)
     ("\\.dsl\\'" . perl-mode)
     ("\\.emacs\\'" . emacs-lisp-mode)
     ("\\.el\\'" . emacs-lisp-mode)
     ("\\.scm\\'" . lisp-mode)
     ("\\.bashrc\\'" . shell-script-mode)
     ("\\Makefile\\'" . makefile-mode)
     ("\\makerules\\'" . makefile-mode)
     ("\\mk\\'" . makefile-mode)
     ("\\.make\\'" . makefile-mode)
     ("\\PostCheckoutScript\\'" . shell-script-mode)
     ("\\.html\\'" . html-mode)
     ("\\.tex\\'" . latex-mode)
     ("\\.c\\'" . c-mode)
     ("\\.h\\'" . c-mode)
     ("\\.cc\\'" . c++-mode)
     ("\\.cpp\\'" . c++-mode)
     ("\\.sh\\'" . shell-script-mode)
     ("\\.py\\'" . python-mode)
     ("\\.m\\'" . matlab-mode)
     ("\\.tlc\\'" . tlc-mode)
     ("\\.org\\'" . org-mode)
     ("\\.xml\\'" . xml-mode)
     ("\\.xsl\\'" . xsl-mode)
     ("\\.bat\\'" . batch-mode)
     ("\\.yml\\'" . yaml-mode)
     ("\\.java\\'" . java-mode)
))

(setq c-default-style "k&r")
(setq-default c-basic-offset 4)

;; For S-left/right/up/down window navigation
(windmove-default-keybindings)

;; Avy shortcuts
;;(global-set-key (kbd "C-:") 'avy-goto-char)
;;(global-set-key (kbd "C-:") 'avy-goto-char-timer)
;;(global-set-key (kbd "C-'") 'avy-goto-char-2)
;;(global-set-key (kbd "M-g f") 'avy-goto-line)
;;(global-set-key (kbd "M-g w") 'avy-goto-word-1)
;;(global-set-key (kbd "M-g e") 'avy-goto-word-0)
;;(avy-setup-default)

;; Open notes file by default
(find-file (concat my-home-dir "notes.org"))

(load-theme 'wombat t)
;; (load-theme 'tango-dark)
