
def printer(h, m, s)
  "#{zero_fill(h)} : #{zero_fill(m)} : #{zero_fill(s)}"
end

def zero_fill(time)
  time.to_s.rjust(2, '0')
end

puts "Input hours: "
h_initial = gets.chomp.to_i

puts "Input minutes: "
m_initial = gets.chomp.to_i

puts "Input seconds: "
s_initial = gets.chomp.to_i

counter = 0

while true do
  h_counter = 0
  m_counter = 0
  s_counter = 0
  if counter == 0
    h_counter = h_initial
    m_counter = m_initial
    s_counter = s_initial
  end
  counter = 1

  for h in h_counter...24
    for m in m_counter...60
      for s in s_counter...60
        sleep 1
        system "clear"
        my_clock = printer(h, m, s)
        print my_clock
        s += 1
      end
      m += 1
    end
    h += 1
  end
end
