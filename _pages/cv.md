---
layout: page
permalink: /cv/
title: cv
nav: true
nav_order: 1
---

<style>
  /* Expand the main content container on the CV page to full width */
  .post {
    max-width: 100% !important;
  }
</style>

<div class="row">
  <div class="col-md-12">
    <div style="margin-bottom: 20px; text-align: right;">
      <a href="{{ '/assets/pdf/cv.pdf' | relative_url }}" target="_blank" class="btn btn-primary" role="button">
        <i class="fa-solid fa-file-pdf"></i> Download CV PDF
      </a>
    </div>
    
    <div style="width: 100%; height: 1100px;">
      <iframe src="{{ '/assets/pdf/cv.pdf' | relative_url }}#view=FitH" width="100%" height="100%" style="border: none;"></iframe>
    </div>
  </div>
</div>
