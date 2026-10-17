# Only blog posts with `status: complete` in their front matter are published.
#
# Anything else (`status: incomplete`, `status: draft`, or no status at all) is
# dropped from the blog collection before rendering, so it gets no page, no
# card on /blog/, and no sitemap entry. The file still lives in the repo.
#
# Runs at the highest priority so it acts before jekyll-sitemap and the pages
# that list site.blog. Works because the site is built by our own Actions
# workflow (`bundle exec jekyll build`), which loads _plugins/.
module BlogStatus
  class Filter < Jekyll::Generator
    safe true
    priority :highest

    def generate(site)
      blog = site.collections["blog"]
      return unless blog

      shown, hidden = blog.docs.partition do |doc|
        doc.data["status"].to_s.strip.downcase == "complete"
      end

      blog.docs.replace(shown)
      hidden.each do |doc|
        Jekyll.logger.info "Blog draft hidden:", doc.relative_path
      end
    end
  end
end
