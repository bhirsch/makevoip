; makefile for pressflow + basic voip-ready Drupal

name = "Voip Drupal"

core = 6.x

api = 2

; Use pressflow instead of Drupal core:
projects[pressflow][type] = "core"
projects[pressflow][download][url] = "http://launchpad.net/pressflow/6.x/6.19.92/+download/pressflow-6.19.92.tar.gz"
projects[pressflow][download][type] = "get"

; CVS checkout of Drupal 6.x core:
; projects[drupal][type] = "core"
; projects[drupal][download][type] = "cvs"
; projects[drupal][download][root] = ":pserver:anonymous:anonymous@cvs.drupal.org:/cvs/drupal"
; projects[drupal][download][revision] = "DRUPAL-6"
; projects[drupal][download][module] = "drupal"

; projects[] = drupal

; Contrib
; --------
; Required contributed modules outside the Voip Drupal project. 

projects[] = advanced_help
projects[] = cck
projects[] = views
projects[] = token
projects[] = ctools
projects[] = date
projects[] = devel
projects[] = filefield
projects[] = imagefield
projects[] = imageapi
projects[] = imagecache
projects[] = diff
projects[] = context
projects[] = swftools
projects[] = services
projects[] = features

; Voip Drupal
; -----------
; Contributed Voip Drupal modules

; Clone projects from github.
; Voip
projects[voip][type] = "module"
projects[voip][download][type] = "git"
projects[voip][download][url] = "git://github.com/leoburd/voip.git"
projects[voip][download][tag] = "6.x-0.4"

; Call Blast
projects[callblast][type] = "module"
projects[callblast][download][type] = "git"
projects[callblast][download][url] = "git://github.com/leoburd/callblast.git"
projects[callblast][download][tag] = "6.x-0.2"

; Voip Set-Up
projects[voipsetup][type] = "module"
projects[voipsetup][download][type] = "git"
projects[voipsetup][download][url] = "git://github.com/bhirsch/voipsetup.git"
projects[voipsetup][download][tag] = "6.x-0.0"
