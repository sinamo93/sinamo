---
layout: about
title: About
permalink: /
subtitle: Ph.D. Candidate · <a href='https://umdearborn.edu/'>University of Michigan–Dearborn</a>

profile:
  align: right
  image: prof_pic.JPEG
  image_circular: false
  more_info: >
    <p>Lab: Power Engineering Lab</p>
    <p>2383 Richard Dr, Room 1042<br>Dearborn, MI 48128</p>
    <p>Email: <strong style="color: var(--global-theme-color);">sinamo[at]umich[dot]edu</strong></p>

selected_papers: true # includes a list of papers marked as "selected={true}"
social: true # includes social icons at the bottom of the page

announcements:
  enabled: true # displays the news timeline on your homepage
  scrollable: true # adds a vertical scroll if the list grows long
  limit: 6 # shows your 6 recent announcements

latest_posts:
  enabled: false # hides the default blog posts section
---

<style>
  .profile {
    margin-top: -5.5rem !important;
    width: 50% !important;
  }

  .post-header {
    padding-right: 52%;
  }

  .clearfix > p,
  .clearfix > ul > li {
    text-align: justify;
    text-justify: inter-word;
  }

  .about-first-name {
    color: #00274c;
    font-weight: 700;
  }

  .about-last-name {
    color: #ffcb05;
  }

  @media (max-width: 767.98px) {
    .profile {
      margin-top: 0 !important;
      width: 100% !important;
    }

    .post-header {
      padding-right: 0;
    }
  }

</style>

<script>
  document.addEventListener('DOMContentLoaded', () => {
    const pageTitle = document.querySelector('.post-header .post-title');
    if (pageTitle) {
      pageTitle.innerHTML = '<span class="about-first-name">Sina</span> <span class="about-last-name">Mohammadi</span>';
    }
  });
</script>

Hi! I am **Sina Mohammadi**, a Ph.D. Candidate in Electrical and Computer Engineering at the **University of Michigan–Dearborn**, advised by [Prof. Wencong Su](https://www.suwencong.com/). My doctoral dissertation focuses on _Machine Learning Applications for Optimizing Power Systems Operation_.

Prior to joining UM-Dearborn in 2023, I earned my M.Sc. in Electrical Engineering from the University of Zanjan (2019) and my B.Sc. in Electrical Engineering from the University of Kurdistan (2016).

**Research Experience & Focus:**

- **AI for Power System Optimization:** Physics-informed neural networks (PINNs) and surrogate modeling for Optimal Power Flow (OPF), and Large Language Models (LLMs) for economic dispatch.
- **Topology Recovery of Distribution Networks:** Distance-Aware Mutual Information (DAMI), voltage-based topology identification, and smart-meter-based recovery of low-voltage distribution grids.
- **Phasor Estimation in Power Systems:** Modulation-assisted, transformer-guided, sub-cycle neural, and deep symbolic regression methods for phasor estimation under decaying DC offsets and fault transients.
- **Energy Storage for AI Data Centers:** Hierarchical energy storage placement, Bayesian-optimized hybrid energy storage coordination, and adaptive grid-mode-aware control for AI data center power smoothing and oscillation mitigation.
