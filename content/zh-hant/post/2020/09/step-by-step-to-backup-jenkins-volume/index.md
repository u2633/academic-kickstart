---
# Documentation: https://sourcethemes.com/academic/docs/managing-content/

title: "Step by Step to Backup Jenkins Volume"
subtitle: ""
summary: "如何建立 Jenkins 的備份並且利用此備份建立新的 Container"
authors: [Zane]
tags: [Docker]
categories: [DevOps]
date: 2020-09-15T18:02:17+08:00
lastmod: 2020-09-15T18:02:17+08:00
featured: false
draft: true

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

最近筆者想要將工作環境裡的 Jenkins 容器化，令 Jenkins 的可攜性可以更高一點，這裡我們就需要使用到 Docker 的備份技巧了。

在參考了網路上一些資料並且實作之後，也成功的將自己的 Jenkins 環境做了備份並且還原在新的 Container 上，過程不算太複雜，
但觀念很重要，就來看看我怎麼做的吧!

## 建立備份檔

## 透過備份檔還原系統

## 總結

## 參考資料

<https://docs.docker.com/storage/volumes/>
<https://dotblogs.com.tw/artBlog/2018/10/02/how-to-backup-restore-docker-volume>
<https://medium.com/@loomchild/backup-restore-docker-named-volumes-350397b8e362>
<https://blog.ssdnodes.com/blog/docker-backup-volumes/>
