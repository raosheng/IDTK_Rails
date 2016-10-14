# encoding: UTF-8

require 'oauth2'

def sync_ruby_china
  url = 'https://ruby-china.org'
  api_url = 'https://ruby-china.org/api/v3/topics/31315'

  client = OAuth2::Client.new(ENV['CLIENT_ID'],
    ENV['CLIENT_SECRET'],
    site: url)

  access_token = client.password
                       .get_token(ENV['USERNAME'], ENV['PASSWORD'])
                       .token

  body_str = File.open('README.md', 'r').read

  Faraday.post("#{api_url}?access_token=#{access_token}", {
    'title': '我不懂 Rails',
    'node_id': 26,
    'body': body_str
    })
end

sync_ruby_china