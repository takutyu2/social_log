class TweetController < ApplicationController
  helper_method :timeline

  require 'twitter'

  def timeline

    client = Twitter::REST::Client.new do |config|
      config.consumer_key = "GHitvLRasXcS9eZPCkmb7tCnw"
      config.consumer_secret = "1HRnCaFNS7FDWFonwl55Sllw3BdMcv6XU4FXYZYf3XOrzmnfe3"
      config.access_token = session[:oauth_token]
      config.access_token_secret = session[:oauth_token_secret]
    end

    # my_user = client.user
    #
    # puts my_user.friends_count
    # puts my_user.followers_count
    # puts my_user.tweets_count
    
    word = "MGS5"
    
    # word を含む tweet を 10 件取得する
    results = client.search(word, :count => 10, :result_type => "recent")

    results.attrs[:statuses].each do |tweet|
      puts Time.parse(tweet[:created_at])
      puts tweet[:id]
      puts "@" + tweet[:user][:screen_name]
      puts tweet[:text]
      puts
    end

  end
end