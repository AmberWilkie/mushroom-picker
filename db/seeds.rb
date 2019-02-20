Mushroom.destroy_all

csv = HTTParty
        .get('https://archive.ics.uci.edu/ml/machine-learning-databases/mushroom/agaricus-lepiota.data').body
mushrooms = CSV.parse(csv)

mushrooms.take(100).each do |shroom|
  Mushroom.create(
    edible: shroom[0],
    cap_shape: shroom[1],
    cap_surface: shroom[2],
    cap_color: shroom[3],
    bruises: shroom[4]
  )
end
