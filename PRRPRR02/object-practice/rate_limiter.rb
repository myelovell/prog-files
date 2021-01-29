#2021-01-20, rate limiter based of the token bucket algorithm

# 1 token is added to the bucket every 1 second.
# The bucket can hold at the most X tokens. If a token arrives when the bucket is full, it is discarded.
# When a request of n tokens arrive:
    # if  n<= tokens are in the bucket, n tokens are removed, and the request is sent back.
    # else, no tokens are removed from the bucket, and the request fails.
    S
class TokenBucket
    def initialize(max_tokens, refill_time)
        @max_tokens = max_tokens
        @refill_time = refill_time
        @now = Time.now
        @bucket = 0
    end


    def time_to_next_refill()

    end

    def tokens_left()

    end

    def request_allowed?()

    end

    def request_sent()

    end

    def refill_tokens()

    end

end
