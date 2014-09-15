(add-to-list 'auto-mode-alist '("\\.js\\'" . javascript-mode))
(autoload 'javascript-mode "javascript" nil t)
(add-to-list 'auto-mode-alist '("\\.json$" . javascript-mode))
;; Set tab space                                                                                                                                                                
(setq-default javascript-indent-level 2)
(setq js-indent-level 2)


(add-to-list 'load-path "/Users/wzhu/.emacs.d/predictive")
(add-to-list 'load-path "/Users/wzhu/.emacs.d/predictive/html")
(add-to-list 'load-path "/Users/wzhu/.emacs.d/predictive/latex")
(add-to-list 'load-path "/Users/wzhu/.emacs.d/predictive/texinfo")
;; load predictive package
(autoload 'predictive-mode "~/.emacs.d/predictive/predictive"
  "Turn on Predictive Completion Mode." t)

;; go mode                                                                                           
(setq load-path (cons "~/code/go-mode.el" load-path))                                         
(require 'go-mode)

(require 'mouse)
(xterm-mouse-mode t)
(global-set-key [mouse-4] '(lambda ()
                           (interactive)
                           (scroll-down 1)))
(global-set-key [mouse-5] '(lambda ()
                           (interactive)
                           (scroll-up 1)))
(defun track-mouse (e)) 
(setq mouse-sel-mode t)


;; Set tab space
(setq default-tab-width 2);
(setq-default indent-tabs-mode nil)

(global-set-key "\M-g"  'goto-line)


(defun revert-all-buffers ()
  (interactive)
  (let ((current-buffer (buffer-name)))
    (loop for buf in (buffer-list)
          do
          (unless (null (buffer-file-name buf))
            (switch-to-buffer (buffer-name buf))
            (revert-buffer nil t)))
    (switch-to-buffer current-buffer)
    (message "All buffers reverted!")))

(global-auto-revert-mode 1)
