require 'open-uri'
require 'nokogiri'

class HtmlGetter

  ##
  # URLからHTMLファイルを取得するメソッド
  #
  # @param category カテゴリ名。入れるディレクトリの名前
  # @param url 探索先のURL
  # @param domain ドメイン名
  #
  def generate_html_from_url(category, url, domain)
    Dir.mkdir category unless Dir.exist? category

    base_html = open(url, &:read)

    link_array = []

    doc = Nokogiri::HTML.parse(base_html, nil, nil)
    doc.xpath('//a').each do |link|
      case domain
      when 'yahoo.com'
        next unless link.attributes['href'].value =~ /#{url}.+html/

        link_array << link.attributes['href'].value
      when 'nytimes.com'
        next unless link.attributes['href'].value =~ %r{/\d\d\d\d/\d\d/\d\d.+}

        link_array << if link.attributes['href'].value =~ /^https.+/
                        link.attributes['href'].value
                      else
                        'https://www.nytimes.com/' + link.attributes['href'].value
                      end
      end
    end
    puts link_array
    link_array.uniq.each do |link|
      open(link) do |f|
        new_file = File.new("#{category}/#{link.slice(%r{[^\/]+html$})}", 'w')
        new_file.puts f.read
      end
    end
  end
end

HtmlGetter.new.generate_html_from_url 'sport',
                                      'https://sports.yahoo.com/',
                                      'yahoo.com'
