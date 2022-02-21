class ApplicationController < ActionController::Base

    # being used from the routes file!
    def hello
        render html: "Hello World!" 
    end

end
