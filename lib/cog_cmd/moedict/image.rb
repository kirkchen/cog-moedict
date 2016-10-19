require 'cog/command'
require 'net/http'
require 'json'
require 'cgi'

class CogCmd::Moedict::Image < Cog::Command
  API_BASE = "https://www.moedict.tw"

  def run_command
    condition = CGI.escape(request.args[0])

		response.template = "image"
		response.content = {
			image: "#{API_BASE}/#{condition}.png",
    }
  end
end
