;;; ~/.doom.d/+bindings.el -*- lexical-binding: t; -*-

;; Global Keys
(global-set-key [f8] 'neotree-toggle)
(global-set-key [f7] 'multi-term-dedicated-toggle)

;; Leader key
(map! :leader
      :desc "M-x"                       "SPC" #'execute-extended-command
      :desc "Org agenda"                  "a" #'org-agenda
      :desc "Org agenda today"            "A" (lambda () (interactive) (org-agenda nil "a"))
      :desc "Org Journal"                 "J" (lambda () (interactive) (org-capture nil "j"))
      :desc "Org capture"                 "C" #'org-capture
      :desc "Expand region"               "<" #'er/expand-region
      :desc "Toggle popup window"         "`" #'+popup/toggle)

;; Prefix map
(map! :leader
      (:prefix ("b" . "buffer")         ; Emacs Buffer Bindings
        :desc "Previous buffer"         "TAB" #'previous-buffer
        :desc "Switch buffer"             "b" #'switch-to-buffer
        :desc "Delete buffer"             "d" #'kill-this-buffer ; SPC-b-d makes more sense than SPC-b-d, but both are still there
        :desc "Recent files"              "r" #'recentf-open-files
        :desc "Switch to home"             "h" #'+doom-dashboard/open)
      (:prefix ("r" . "crystal")        ; Crystal Lang bindings
        :desc "Crystal run"               "r" #'run-crystal
        :desc "Crystal tool format"       "p" #'crystal-tool-format
        :desc "Crystal run Spec All"      "P" #'crystal-spec-all)
      (:prefix ("h h" . "Custom Docs")  ; Custom Org Docs for myself
        :desc "Do What Document"          "w" #'find-file "~/.notes/org/what.org")) ; Reference doc for me to find info regarding my machiness' software
