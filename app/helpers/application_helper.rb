module ApplicationHelper

  def current_user
    @_current_user ||= session[:user_id] && Admin.find_by_id(session[:user_id])
  end

  def smart_truncate(s, opts = {})
    opts = {:words => 12}.merge(opts)
    if opts[:sentences]
      return s.split(/\.(\s|$)+/)[0, opts[:sentences]].map{|s| s.strip}.join('. ') + '.'
    end
    a = s.split(/\s/) # or /[ ]+/ to only split on spaces
    n = opts[:words]
    a[0...n].join(' ') + (a.size > n ? '...' : '')
  end

  def recent_posts
    Post.limit(3)
  end

  def recent_tweets
    if Tweet.stale?
      Twitter.user_timeline("astamm78", :exclude_replies => true, :include_rts => false).each do |t|
        Tweet.create(tweet_id: t.id, tweet: t.text)
      end
      Tweet.first.update_attributes(:updated_at => Time.now)
    end
    Tweet.limit(3)
  end

end