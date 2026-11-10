# frozen_string_literal: true

Jekyll::Hooks.register :pages, :post_render do |page|
  output = page.output
  next unless output.include?("</head>")
  next if output.include?("google-site-verification")

  verification_tag = <<~HTML.strip
    <meta name="google-site-verification" content="-aFlpK_fKunGcIpw2ErkVrOPQvlcS3c2wyTOvsIYHQw">
  HTML

  output.sub!("</head>", "#{verification_tag}\n</head>")
  page.output = output
end
