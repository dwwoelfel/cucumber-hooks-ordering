Then /^I can assert that (\d+) == (\d+)$/ do |var_a, var_b|
  print "\u001b[34m" # print purple, so it's easier to find
  print "\nPrinting from inside the test step\n\n"
  print "\u001b[0m" # close the console code
  assert_equal(var_a, var_b)
end
