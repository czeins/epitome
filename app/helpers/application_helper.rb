module ApplicationHelper

#Adds typekit helper
    def typekit_include_tag apikey
      javascript_include_tag("http://use.typekit.com/ruq7dqb.js") +
      javascript_tag("try{Typekit.load()}catch(e){}")
    end

end
