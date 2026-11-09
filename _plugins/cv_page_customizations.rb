# frozen_string_literal: true

Jekyll::Hooks.register :pages, :post_render do |page|
  next unless page.url == "/cv/"

  output = page.output
  pdf_link = output[/<a[^>]+class="float-right"[^>]*>\s*<i class="fa-solid fa-file-pdf"><\/i>\s*<\/a>/m]

  if pdf_link
    output.sub!(pdf_link, "")
    pdf_link = pdf_link
      .sub('class="float-right"', 'class="cv-pdf-link" aria-label="Open CV PDF"')
      .sub('>', ' style="font-size: 1.5rem; position: absolute; right: 1rem; top: 1rem;">')
  end

  output.sub!(/<h1 class="post-title">.*?<\/h1>/m, '<h1 class="post-title"></h1>')
  output.sub!(/\s*<p class="post-description">.*?<\/p>/m, "")

  contact_card_pattern = /(<div class="card mt-3 p-3">\s*<h3 class="card-title font-weight-medium">Contact Information<\/h3>.*?<\/table>)\s*<\/div>/m
  academic_service_card = <<~HTML.delete("\n")
    <div class="card mt-3 p-3 cv-academic-service-card">
      <h3 class="card-title font-weight-medium">Academic Service</h3>
      <p class="card-text font-weight-light">Peer reviewer for:</p>
      <div class="cv-academic-service-grid font-weight-light" style="display: grid; font-size: 0.9rem; gap: 0.45rem 1rem; grid-template-columns: repeat(2, minmax(0, 1fr));">
        <span>IEEE Transactions on Smart Grid</span>
        <span>IEEE Transactions on Power Systems</span>
        <span>IEEE Power Engineering Letters</span>
        <span>IEEE Transactions on Industrial Informatics</span>
        <span>IEEE Transactions on Industrial Electronics</span>
        <span>IEEE Transactions on Control of Network Systems</span>
        <span>International Journal of Electrical Power &amp; Energy Systems</span>
      </div>
    </div>
  HTML

  output.sub!(contact_card_pattern) do
    contact_card = Regexp.last_match(1).sub(
      '<div class="card mt-3 p-3">',
      '<div class="card mt-3 p-3" style="position: relative;">'
    )
    "#{contact_card}#{pdf_link}</div>#{academic_service_card}"
  end

  page.output = output
end
