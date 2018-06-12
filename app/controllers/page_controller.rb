class PageController < ApplicationController

  # show a form to submit long url
  def post_url
    # take url from form
    originial_url = "My/url/from/user/input"
    # submit url to api server
    @response = post_call(originial_url)
  end

  # form to get original url
  def redirect_url
  end

  private
  
  def post_call(data)
    remote_url = "http://localhost:3000/url"
    uri = URI(remote_url)
    req = Net::HTTP::Post.new(uri, 'Content-Type' => 'application/json')
    req.body = .to_json
    response = Net::HTTP.start(uri.hostname, uri.port) do |http|
        http.request(req)
    end
    return JSON.parse(response.body)['short_url'] if response.code == '201'
    'Failed to create short url'
  end

  def get_call
    
  end
end
