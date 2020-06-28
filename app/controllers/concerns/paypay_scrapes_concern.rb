module PaypayScrapesConcern
  require 'open-uri'
  require 'nokogiri'

  def set_paypay_shops
    url = 'https://paypay.ne.jp/notice/20200604/01/'

    charset = nil
    html = open(url) do |f|
      charset = f.charset
      f.read
    end

    doc = Nokogiri::HTML.parse(html, nil, charset)

    @shops = []

    doc.xpath('//div[@class="article__contents post"]').css('tr').each do |node|
      @shops << node.css("td[1]").text
    end

    @shops = @shops.drop(1)
  end
end
