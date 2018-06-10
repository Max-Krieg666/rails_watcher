module RailsWatcher
  class Statistics
    BASE_MODEL = RailsWatcher::Event

    class << self
      def daily_data(date)
        date = DateTime.parse(date.inspect)
        query = define_query(date.beginning_of_day, date.end_of_day)
        data = event_serializer(query)

        data
      end

      def monthly_data
        now = DateTime.current
        query = define_query(now.beginning_of_month, now.end_of_month)
        data = event_serializer(query)

        data
      end

      def yearly_data
        now = DateTime.current
        query = define_query(now.beginning_of_year, now.end_of_year)
        data = event_serializer(query)

        data
      end

      def all_time_data
        query = BASE_MODEL
        data = event_serializer(query)

        data
      end

      def define_query(begin_date, end_date)
        BASE_MODEL.where('created_at > ? and created_at < ?', begin_date, end_date)
      end

      def event_serializer(query)
        data = {}
        data[:full_count] = query.count
        data[:success] = query.success.count
        data[:error] = query.error.count
        data[:manual] = query.manual.count
        data[:automatical] = query.automatical.count
        data
      end
    end
  end
end
