def sync_ruby_china
  URL = 'https://ruby-china.org'
  API_URL = 'https://ruby-china.org/api/v3/topics/31315'

  client = OAuth2::Client.new(ENV['CLIENT_ID'],
    ENV['CLIENT_SECRET'],
    site: URL)

  ACCESS_TOKEN = client.password
                       .get_token(ENV['USERNAME'], ENV['PASSWORD'])
                       .token

  body_str = File.open('README.md', 'r').read

  Faraday.post("#{API_URL}?access_token=#{ACCESS_TOKEN}", {
    'title': '我不懂 Rails',
    'node_id': 26,
    'body': body_str
    })
end

sync_ruby_china