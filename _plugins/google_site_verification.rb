# frozen_string_literal: true

Jekyll::Hooks.register :pages, :post_render do |page|
  next unless page.output_ext == ".html"
  next if page.output.include?("google-site-verification")

  verification_tag = <<~HTML.strip
    <meta name="google-site-verification" content="-aFlpK_fKunGcIpw2ErkVrOPQvlcS3c2wyTOvsIYHQw">
  HTML

  page.output.sub!("</head>", "#{verification_tag}\n</head>")
end
