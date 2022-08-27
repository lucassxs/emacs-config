;; Remover boas vindas
(setq inhibit-startup-message t)

;; Remover Menus
(tool-bar-mode -1)
(menu-bar-mode -1)

;; Remover barra de rolagem
(scroll-bar-mode -1)

;; Adiciona número nas linha
(global-linum-mode t)

;; Tamanho da fonte
(set-face-attribute 'default nil :height 150)

;; Pacotes
(require 'package)
(setq package-enable-at-startup nil) ;; Não habilita os pacotes padrões ao iniciar o emacs. Utilizarei o MELPA =)

; MELPA =)
(add-to-list 'package-archives
	      '("melpa-stable" . "https://stable.melpa.org/packages/") t)


(package-initialize) ; Inicia os pacotes

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))


(use-package which-key
  :ensure t
  :config
  (progn
    (which-key-setup-side-window-right-bottom)
    (which-key-mode)
  ))
   
(use-package auto-complete
  :ensure t
  :init
  (progn
    (ac-config-default)
    (global-auto-complete-mode t)))

(use-package neotree
  :ensure t
  :config  
  (progn
    (setq neo-theme (if (display-graphic-p) 'icons 'arrow)))
  :bind (("C-\\" . 'neotree-toggle))); tecla de abrir neotree

(use-package all-the-icons
  :ensure t)

;; Tema
(use-package rebecca-theme
  :ensure t
  :config (load-theme 'rebecca t))

;;ess
(use-package ess
  :ensure t)

;;elcord mode
;;(use-package elcord
;;  :ensure t
;;  :config (load-file ~/.emacs.d/elcord.el t))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("7178dc309d5bb89e9de6feddd71058ddf8cb947bbf08ea6c7799a03ae690449e" default))
 '(package-selected-packages
   '(elcord ess rebecca-theme neotree auto-complete which-key use-package try org-modern magit dracula-theme)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
