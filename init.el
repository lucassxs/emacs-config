;; Remover boas vindas
(setq inhibit-startup-message t)

;; Remover Menus
(tool-bar-mode -1)
(menu-bar-mode -1)

;; Remover barra de rolagem
(scroll-bar-mode -1)

;; Numero de linhas
(global-linum-mode t)

;; Tamanho da fonte
(set-face-attribute 'default nil :height 150)

;; Pacotes
(require 'package)
(setq package-enable-at-startup nil) ; desabilitar inicio de ativacao

; MELPA - Repositório
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))

(package-initialize) ; iniciar pacotes

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(use-package try
  :ensure t)

(use-package which-key
  :ensure t
  :config (which-key-mode))

(use-package auto-complete
  :ensure t
  :init
  (progn
    (ac-config-default)
    (global-auto-complete-mode t)))

(use-package all-the-icons
  :ensure t)

(use-package neotree
  :ensure t
  :config
  (progn
   (setq  neo-theme (if (display-graphic-p) 'icons 'arrow)))
  :bind (("C-\\" . 'neotree-toggle))) ;; tecla atalho

;; Desenvolvimento Web
(use-package web-mode
  :ensure t)



;; melpa stuff
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(web-mode melancholy-theme melancholy-them elcord all-the-icons neotree auto-complete try use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
