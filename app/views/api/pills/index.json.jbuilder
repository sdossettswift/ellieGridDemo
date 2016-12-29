json.pills @pills.each do |pill|
  json.id pill.id
  json.drug pill.drug
  json.dose pill.dose
  json.time pill.time
end
