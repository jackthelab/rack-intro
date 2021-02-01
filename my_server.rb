class MyServer
    def call(env)
        return [ 200, { 'Content-Type' => 'text/html' }, pretty_response ]
    end

    def pretty_response
        (Time.now.to_i % 2).zero? ? ["<em>Hello</em>"] : ["<strong>Hello</strong>"]
    end

    # def pretty_time
    #     (Time.now.hour.to_i - 6) < 12 ? ["<h1>Morning!</h1>"] : ["<h1>Afternoon!</h1>"]
    # end
end