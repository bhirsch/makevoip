; makefile for pressflow + basic voip-ready Drupal

name = "Voip Drupal"

core = 6.x

; Use pressflow instead of Drupal core:
; projects[pressflow][type] = "core"
projects[drupal][download][url] = "http://launchpad.net/pressflow/6.x/6.19.92/+download/pressflow-6.19.92.tar.gz"
projects[drupal][download][type] = "get"

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

; Features
; ---------
; Version 1.0 doesn't seem to revert overrides.
; Use an olde version. (BH 8/31/10)
projects[features] = 1.0-beta6
projects[features][version] = 1.0-beta6

; Voip Drupal
; -----------
; Contributed Voip Drupal modules

; Clone projects from github.
; Voip
projects[voip][type] = "module"
projects[voip][download][type] = "git"
projects[voip][download][url] = "git://github.com/leoburd/voip.git"
projects[voip][download][tag] = "6.x-0.2"

; Call Blast
projects[callblast][type] = "module"
projects[callblast][download][type] = "git"
projects[callblast][download][url] = "git://github.com/bhirsch/callblast.git"
projects[callblast][download][tag] = "6.x-0.1"

; Voip Set-Up
projects[voipsetup][type] = "module"
projects[voipsetup][download][type] = "git"
projects[voipsetup][download][url] = "git://github.com/bhirsch/voipsetup.git"
projects[voipsetup][download][tag] = "6.x-0.0"
