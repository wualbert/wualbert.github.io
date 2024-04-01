---
layout: post
title:  "Robust-RRT: Probabilistically-complete motion planning for uncertain nonlinear systems"
date:   2022-09-25 12:00:00 +2:00
image: /images/robust_rrt.jpg
categories: research
authors: "<strong>Albert Wu</strong>, Thomas Lew, Kiril Solovey, Edward Schmerling, Marco Pavone"
venue: "International Symposium of Robotics Research (ISRR)"
arxiv: https://arxiv.org/abs/2205.07728
paper: https://link.springer.com/chapter/10.1007/978-3-031-25555-7_36
slides:
code: https://github.com/stanfordasl/randup_rrt
youtube: https://youtu.be/-U--Q2GR6Og
---
We propose Robust-RRT, which integrates forward reachability analysis with rapidly-exploring random tree. Unlike exisiting robust planning algorithms, Robust-RRT is theoretically sound without restricitng the system structure. Specifically, Robust-RRT is probabilistically complete for nonlinear Lipschitz continuous dynamical systems with bounded uncertainty. Using sampling-based reachability analysis, we demonstrate Robust-RRT on simulated nonlinear, underactuated, and hybrid systems.