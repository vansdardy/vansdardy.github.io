source "https://rubygems.org"

# Latest Jekyll 4.x. Because we deploy via GitHub Actions (not the legacy
# "deploy from a branch" path), we are NOT restricted to the github-pages gem's
# pinned/old Jekyll — we get current Jekyll and full plugin freedom.
gem "jekyll", "~> 4.3"

# Plugins that ship the SEO/Open-Graph tags and the sitemap.
group :jekyll_plugins do
  gem "jekyll-seo-tag", "~> 2.8"
  gem "jekyll-sitemap", "~> 1.4"
end

# Ruby 3.4+ no longer bundles these as default gems; Jekyll's local server needs them.
gem "webrick", "~> 1.8"
gem "csv"
gem "base64"
gem "logger"

# Faster file-watching on local `jekyll serve` (Windows/macOS); harmless in CI.
gem "wdm", "~> 0.1", platforms: [:mingw, :x64_mingw, :mswin]
