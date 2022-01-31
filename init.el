;; ---------- EMACS GUI Config

;; Remove boas vindas
(setq inhibit-startup-message t)

;; Remove menus
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; numero de linhas
(global-linum-mode t)

;; Highlight linha atual
(global-hl-line-mode)

;; Tamanho da fonte
(set-face-attribute 'default nil :height 120)

;;Flex Buffer
(defalias 'list-buffers 'ibuffer-other-window)
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)

;; Melpa
(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; ----- Auto complete

; snippets from autocomplete
(use-package yasnippet
  :ensure t)

(yas-global-mode 1)

; Company: autocomplete library
(use-package company
  :ensure t
  :config
  (setq company-idle-delay 0)
  (setq company-minimum-prefix-lenght 1)
  (global-company-mode t))

(use-package try
  :ensure t)

(use-package spaceline
  :ensure t)

(use-package spaceline-config
  :config
  (spaceline-emacs-theme))

(use-package which-key
  :ensure t
  :config (which-key-mode))

(use-package all-the-icons
  :ensure t)


;;---------

(use-package ace-window
  :ensure t
  :bind (("C-x o" . ace-window)))

(use-package rebecca-theme
  :ensure t
  :config (load-theme #'rebecca t))

(use-package counsel
  :ensure t)

(use-package vterm
  :ensure t)

(use-package vterm-toggle
  :ensure t)

(use-package markdown-mode
  :ensure t)

(global-unset-key (kbd "C-<up>"))
(global-unset-key (kbd "C-<down>"))
(use-package move-text
  :ensure t
  :config
  (progn
    (global-set-key (kbd "C-<up>") 'move-text-up)
    (global-set-key (kbd "C-<down>") 'move-text-down)))


(use-package swiper
  :ensure t
  :init
  (progn
    (ivy-mode 1)
    (setq ivy-use-virtual-buffers t)
    (setq enable-recursive-minibuffers t)
    (global-set-key "\C-f" 'swiper)
    (global-set-key (kbd "<f1> l") 'counsel-find-library)))


;; ----- Discord Rich Presence
(use-package elcord
  :ensure t)
(require 'elcord)
(elcord-mode)

;; --------- Git config

;; Git extension
(use-package magit
  :ensure t)

;;Show diff inline
(use-package diff-hl
  :ensure t)

(add-hook 'prog-mode-hook 'turn-on-diff-hl-mode)
(add-hook 'vc-dir-mode-hook 'turn-on-diff-hl-mode)

;; Project Organization
(use-package projectile
  :ensure t
  :config
  (define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
  (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
  (projectile-mode +1))


(setq projectile-project-search-path '("~/git/"))
(setq projectile-switch-project-action 'neotree-projectile-action)

(use-package neotree
  :ensure t
  :config
  (progn
    (setq neo-theme (if (display-graphic-p) 'icons 'arrow))
    )
  :bind (("C-\\". 'neotree-toggle)) ;; atom key
)




(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
