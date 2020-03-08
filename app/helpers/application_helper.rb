module ApplicationHelper
  def default_meta_tags
    {
        site: '最適Pay',
        title: '最適Pay',
        reverse: true,
        charset: 'utf-8',
        description: 'お店の名前を検索してPay系の還元率を比較しよう！',
        keywords: 'Pay系 キャッシュレス 最適Pay 還元率',
        canonical: request.original_url,
        separator: '|',
        icon: [
            { href: image_url('favicon.ico') },
            { href: image_url('paylogo.jpg'), rel: 'apple-touch-icon', sizes: '180x180', type: 'image/jpg' },
        ],
        og: {
            site_name: '最適Pay', # もしくは site_name: :site
            title: '最適Pay', # もしくは title: :title
            description: 'お店の名前を検索してPay系の還元率を比較しよう！', # もしくは description: :description
            type: 'website',
            url: request.original_url,
            image: image_url('paylogo.jpg'),
            locale: 'ja_JP',
        },
        twitter: {
            card: 'summary',
            site: '@trigger_poem',
        }
    }
  end
end
