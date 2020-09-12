---
# Documentation: https://sourcethemes.com/academic/docs/managing-content/

title: "Group Permission on Jenkins"
subtitle: ""
summary: "利用群組特性設定每個群組的可視性"
authors: [Zane]
tags: [Jenkins]
categories: [DevOps]
date: 2020-09-11T15:14:27+08:00
lastmod: 2020-09-11T15:14:27+08:00
featured: false
draft: false

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
# Focal points: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight.
image:
  caption: ""
  focal_point: ""
  preview_only: false

# Projects (optional).
#   Associate this post with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["internal-project"]` references `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
projects: []
---

## 前言

相信大家在使用 Jenkins 的時候，大部份的人架設完後並且建立完使用者後，都是直接開始建構自己的 Jobs，
而 Jenkins 的`Authorization`預設值如下圖

![Default Authorization](defautl_authorization.png)

從字面可以理解，這代表任何一個使用者都可以進去亂搞。所以，不論你是新人還是~~老屁股~~資深人員，
只要對 Jenkins 有一定的熟悉程度都可以隨意去接觸到

## 設定 Jenkins Security Realm

## 設定 Host Users and Group

## 設定 Jenkins Authorization

## 設定 Jenkins Job Permission

## 總結

## 參考資料

<https://www.edureka.co/community/47822/there-restrict-permissions-user-per-individual-job-jenkins>
<https://www.jenkins.io/security/advisory/2019-05-21/>
<https://github.com/oracle/docker-images/issues/1336#issuecomment-530789709>
<https://github.com/garbagetown/ansible-jenkins/issues/6#issue-33045278>
