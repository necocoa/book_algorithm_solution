def fibo_recursive(n)
  return 0 if n == 0
  return 1 if n == 1

  @cache ||= {}
  return @cache[n] if @cache[n]
  @cache[n] = fibo_recursive(n - 1) + fibo_recursive(n - 2)
end

def fibo_for(n)
  return 0 if n == 0

  j = 1
  k = 1
  3.upto(n) do
    j, k = [k, j + k]
  end
  k
end

n = 10
now = Time.now
p fibo_recursive n
p "#{(Time.now - now)} sec"

now = Time.now
p fibo_for n
p "#{(Time.now - now)} sec"
