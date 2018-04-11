require 'pagerduty'
require 'date'
require 'pp'
module PDCmd
	class Notify
		def initialize(**options)
			pp options if options[:verbose]
			@hn = Socket.gethostname
      @ts = DateTime.now.strftime('%z %F %T')
			@msg = options[:message]
			@pd_key = options[:sk]
			# just in case....
			fail "you must supply a pagerdutykey" unless @pd_key
			begin
				retries ||= 0
				@pd = Pagerduty.new(@pd_key)
			rescue
				retry if (retries += 1) < 3
			end

		end
		def alert()
			m = "#{@hn} #{@msg}"
			pd_info = {
				incident_key: @ts,
				client:       @hn,
				details:      { message: m }
			}
			begin
				retries ||= 0
				@pd.trigger(m, pd_info)
			rescue
				retry if (retries += 1) < 3
			end
		end
	end
end
