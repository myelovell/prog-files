#2021-01-20, rate limiter based on the token bucket algorithm

# 1 token is added to the bucket every 1 second.
# The bucket can hold at the most X tokens. If a token arrives when the bucket is full, the bucket is discarded.
# When a request of n tokens arrive:
    # if  n<= tokens are in the bucket, n tokens are removed, and the request is sent back.
    # else, no tokens are removed from the bucket, and the request fails.

    # @tokens: number of tokens added to the bucket in each time unit.
    # time_unit: the tokens are added in this time frame. from @refill_time --> Ctrl + c


    # request_sent() accepts only 1 parameter: the request
    # The current timestamp is put into @refill_start
    # The time passed between request_sent() and the previous request_sent() call returns from time_to_next_refill().
        # time_passed = Time.now - @refill_time
    # We update the refill_time to the current timestamp.
    # This is the most important part. By multiplying the time_passed and our rate (which is tokens / time_unit) we find out how many token needs to be added to the bucket. = refill_time?





class TokenBucket
    def initialize(max_tokens, refill_time)
        @max_tokens = max_tokens
        @refill_time = refill_time #time request is sent
        @refill_start = Time.now
        @bucket = 0
        @tokens = tokens
    end


    def time_to_next_refill() #The time passed between request_sent() and the previous request_sent()
        time_passed = Time.now - @refill_start
        return @refill_time - time passed
    end

    def request_allowed?(tokens)  #return true or false
        # If the bucket doesn't have enough token, request_allowed?() = false
        # Else --> remove requested tokens in request_sent()
        if tokens > @bucket
            return false
        else
            request_sent()
        end
    end

    def request_sent()
        @bucket - tokens
        @refill_time = Time.now
    end

    def refill_tokens() # If @bucket == max_tokens --> @bucket = 0
        while @bucket == max_tokens
            @bucket = 0
        end
    end

end
