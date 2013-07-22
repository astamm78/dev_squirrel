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
    Twitter.user_timeline("astamm78", :exclude_replies => true, :include_rts => false)[0..2]
  end

end