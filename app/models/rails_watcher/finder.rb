module RailsWatcher
  class Finder
    include ActiveModel::Model
    attr_accessor :query, :title, :status, :kind, :user_login, :user_ip

    def initialize(params = {})
      super(params)
    end

    def apply_search
      @query = RailsWatcher::Event
      title_search
      status_search
      kind_search
      user_login_search
      user_ip_search
    end

    def title_search
      @query = @query.where('title LIKE ?', '%' + title + '%') if title.present?
      @query
    end

    def status_search
      @query = @query.where('status LIKE ?', '%' + status + '%') if status.present?
      @query
    end

    def kind_search
      @query = @query.where('kind LIKE ?', '%' + kind + '%') if kind.present?
      @query
    end

    def user_login_search
      @query = @query.where('user_login LIKE ?', '%' + user_login + '%') if user_login.present?
      @query
    end

    def user_ip_search
      @query = @query.where('user_ip LIKE ?', '%' + user_ip + '%') if user_ip.present?
      @query
    end
  end
end
