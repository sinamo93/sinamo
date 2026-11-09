---
layout: page
title: Photo
permalink: /photo/
description: Research Lab Moments — Conferences, Workshops, Events, and Gatherings
nav: true
nav_order: 6
---

<h2 class="photo-gallery-title">Research Lab Moments</h2>

<p class="photo-gallery-intro">
  Group moments from our research lab’s participation in conferences, workshops, research events, and gatherings.
</p>

<div class="research-photo-gallery">
  {% for photo_number in (1..15) %}
    {% unless photo_number == 3 %}
      {% capture padded_number %}{% if photo_number < 10 %}0{% endif %}{{ photo_number }}{% endcapture %}
      <figure class="research-photo-item">
        <img
          src="{{ '/assets/img/photos/research-lab-' | append: padded_number | append: '.jpg' | relative_url }}"
          alt="Power Engineering Research Lab group at a conference, workshop, event, or gathering"
          loading="lazy"
        >
      </figure>
    {% endunless %}
  {% endfor %}
</div>

<style>
  .post-header {
    display: none;
  }

  .photo-gallery-title {
    margin-bottom: 0.35rem;
  }

  .photo-gallery-intro {
    color: var(--global-text-color-light);
    margin-bottom: 1.5rem;
  }

  .research-photo-gallery {
    column-count: 3;
    column-gap: 1rem;
  }

  .research-photo-item {
    break-inside: avoid;
    margin: 0 0 1rem;
  }

  .research-photo-item img {
    border-radius: 0.4rem;
    box-shadow: 0 3px 12px rgba(0, 0, 0, 0.14);
    display: block;
    height: auto;
    width: 100%;
  }

  @media (max-width: 991.98px) {
    .research-photo-gallery {
      column-count: 2;
    }
  }

  @media (max-width: 575.98px) {
    .research-photo-gallery {
      column-count: 1;
    }
  }
</style>
