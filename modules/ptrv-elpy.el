;;; ptrv-elpy.el --- elpy module

;; Copyright (C) 2013  ptrv <mail@petervasil.net>

;; Author: ptrv <mail@petervasil.net>
;; Keywords:

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;;

;;; Code:

(setq elpy-default-minor-modes '(eldoc-mode
                                 highlight-indentation-mode
                                 yas-minor-mode
                                 auto-complete-mode))
(elpy-enable)

(eval-after-load "elpy"
  '(progn
     (define-key elpy-mode-map (kbd "C-c C-f") nil)
     (define-key elpy-mode-map (kbd "C-c C-j") nil)
     (define-key elpy-mode-map (kbd "C-c C-n") nil)
     (define-key elpy-mode-map (kbd "C-c C-p") nil)
     ))

(set-face-background 'highlight-indentation-face "#e3e3d3")
(set-face-background 'highlight-indentation-current-column-face "#c3b3b3")

(provide 'ptrv-elpy)
;;; ptrv-elpy.el ends here