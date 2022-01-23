;; Personal Emacs config
;; Author: Lucas Stfano
;; Date: Jan 23 2022


;; Remover boas vindas
(setq inhibit-startup-message t)

;; Remover Menus
(tool-bar-mode -1)
(menu-bar-mode -1)

;; Remover barra de rolagem
(scroll-bar-mode -1)

;; Número de linhas
(global-linum-mode t)

;; Tamanho da fonte
(set-face-attribute 'default nil :height 130)

;; Pacotes
(require 'package)
(setq package-enable-at-startup nil); desabilitar inicio de ativação

;; Adicionar MELPA :)
(add-to-list 'package-archives
	     '("melpa-stable" . "https://stable.melpa.org/packages/") t)

;; Inicia pacotes
(package-initialize)

;; Adiciona use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; Pacote para testar outros pacotes dentro do emacs :p
(use-package try
  :ensure t)

;; Which key
(use-package which-key
  :ensure t
  :config (which-key-mode))


;; Autocomplete
(use-package auto-complete
  :ensure t
  :init
  (progn
    (ac-config-default)
    (global-auto-complete-mode t)))




(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(which-key ## try use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
