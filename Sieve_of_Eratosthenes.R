##Sieve_of_Eratosthenes

# Function to generate prime numbers using Sieve
sieve <- function(n) {
  prime <- rep(TRUE, n)
  
  for (i in seq(2, sqrt(n))) {
    if (prime[i]) {
      prime[seq(i^2, n, i)] <- FALSE
    }
  }
  
  p1M <- which(prime)
  return(p1M) 
}

# prime numbers between 1 and 1,000,000
# result from system.time() for computation
pTm <- system.time({
  p1M <- sieve(1000000)
})

l1M <- length(p1M)  # Count of identified prime numbers

print(pTm)
