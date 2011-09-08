
pad2 = (n) -> if n < 10 then "0#{n}" else n

MD.Time =
  now : ->
    new Date()

  stamp : ->
    n = MD.Time.now()
    "#{n.getFullYear()}/#{pad2(n.getMonth())}/#{pad2(n.getDate())} #{pad2(n.getHours())}:#{pad2(n.getMinutes())}:#{pad2(n.getSeconds())}"

