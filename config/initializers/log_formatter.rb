class Logger::Formatter
  def call(severity, time, progname, msg)
    if(severity == "FATAL")
      if(msg.include?(":in"))
        param_erro =  msg.split(":")
        text=File.open(param_erro[0]).read
        text.gsub!(/\r\n?/, "\n")

        text.each_line do |line|
          print "#{line_num += 1} #{line}"
        end

      end
    end
  end
end

