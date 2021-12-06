defmodule Interest do
  def rate(amount, loan, months) do
    base = amount / loan
    exponent = 1 / months
    (:math.pow(base, exponent) - 1) * 100
  end

  def centsToDollars(amount) do
    dollars = amount / 100
    dString = Float.to_string(dollars)

    if String.at(dString, -2) == "." do
      String.replace(dString <> "0",".", ",")
    else
      String.replace(dString,".", ",")
    end
  end

  def response(amount, loan, months) do
    interest = Float.floor(rate(amount, loan, months), 3)
    dollarAmount = centsToDollars(amount)
    dollarLoan = centsToDollars(loan)

    "Your loan of $ #{dollarLoan} had an interest rate of #{interest}%, for after #{months} months you had to pay $ #{dollarAmount}"
  end
end

m = 25500
c = 2550
n = 10

interest = Interest.response(m, c, n)

IO.puts interest
