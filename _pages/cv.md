---
layout: cv
permalink: /cv/
title: CV
nav: true
nav_order: 1
cv_pdf: /assets/pdf/cv.pdf
description: Curriculum Vitae of Sina Mohammadi.
toc:
  sidebar: left
---

<style>
  .post-header .post-title {
    font-size: 0;
    margin-bottom: 0;
  }

  .post-header .post-title a {
    font-size: 1.5rem;
  }

  .post-header .post-description {
    display: none;
  }

  .cv .card:first-child {
    position: relative;
  }

  .cv .card:first-child .cv-pdf-link {
    font-size: 1.5rem;
    position: absolute;
    right: 1rem;
    top: 1rem;
  }

  .cv-academic-service-grid {
    display: grid;
    font-size: 0.9rem;
    gap: 0.45rem 1rem;
    grid-template-columns: repeat(2, minmax(0, 1fr));
  }

  @media (max-width: 575.98px) {
    .cv-academic-service-grid {
      grid-template-columns: 1fr;
    }
  }
</style>

<script>
  document.addEventListener('DOMContentLoaded', () => {
    const pdfLink = document.querySelector('.post-header .post-title a');
    const firstCard = document.querySelector('.cv .card:first-child');

    if (pdfLink && firstCard) {
      pdfLink.classList.remove('float-right');
      pdfLink.classList.add('cv-pdf-link');
      firstCard.appendChild(pdfLink);
    }

    if (firstCard && !document.querySelector('.cv-academic-service-card')) {
      const academicServiceCard = document.createElement('div');
      academicServiceCard.className = 'card mt-3 p-3 cv-academic-service-card';
      academicServiceCard.innerHTML = `
        <h3 class="card-title font-weight-medium">Academic Service</h3>
        <p class="card-text font-weight-light">Peer reviewer for:</p>
        <div class="cv-academic-service-grid font-weight-light">
          <span>IEEE Transactions on Smart Grid</span>
          <span>IEEE Transactions on Power Systems</span>
          <span>IEEE Power Engineering Letters</span>
          <span>IEEE Transactions on Industrial Informatics</span>
          <span>IEEE Transactions on Industrial Electronics</span>
          <span>IEEE Transactions on Control of Network Systems</span>
          <span>International Journal of Electrical Power &amp; Energy Systems</span>
        </div>
      `;
      firstCard.insertAdjacentElement('afterend', academicServiceCard);
    }
  });
</script>
