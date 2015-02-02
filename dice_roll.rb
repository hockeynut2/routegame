require 'bundler'
Bundler.require

get '/roll/' do
  num = [1, 2, 3, 4, 5, 6].sample.to_s
  send_file File.join(settings.public_folder, "/die_face_#{num}.jpg")
end

get '/roll/:num' do
  dice_num = params[:num]
  rolled = []
  dice_num.to_i.times do
    rolled.push([1, 2, 3, 4, 5, 6].sample)
  end
  rolled.each do |num|
    send_file File.join(settings.public_folder, "/die_face_#{num}.jpg")
  end
end