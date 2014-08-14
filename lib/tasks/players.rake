namespace :players do
  desc "TODO"
  task :populate => :environment do
    Player.delete_all
    players = JSON.parse(IO.read('data.json'))
    players.each do |p|
      tmp = p.except('fixtures','event_explain','season_history','fixture_history')
      tmp['elementid'] = p['id']
      Player.create(tmp.except('id'))
    end
  end
end
