#!/usr/bin/env ruby

require 'open-uri'

teams = {
  atl: 'hawks',
  bkn: 'nets',
  bos: 'celtics',
  cha: 'hornets',
  chi: 'bulls',
  cle: 'cavaliers',
  dal: 'mavericks',
  den: 'nuggets',
  det: 'pistons',
  gsw: 'warriors',
  hou: 'rockets',
  ind: 'pacers',
  lac: 'clippers',
  lal: 'lakers',
  mem: 'grizzlies',
  mia: 'heat',
  mil: 'bucks',
  min: 'timberwolves',
  nop: 'pelicans',
  nyk: 'knicks',
  okc: 'thunder',
  orl: 'magic',
  phi: '76ers',
  phx: 'suns',
  por: 'blazers',
  sac: 'kings',
  sas: 'spurs',
  tor: 'raptors',
  uta: 'jazz',
  was: 'wizards'
}

teams.each do |abbreviation, name|
  url = "http://i.cdn.turner.com/nba/nba/.element/img/1.0/teamsites/logos/teamlogos_500x500/#{abbreviation}.png"

  print "Downloading #{name} (#{url})..."

  open("#{name}.png", 'wb') do |file|
    file << open(url).read
  end

  # Store the thumbnail
  `convert #{name}.png -resize 128x128 #{name}_logo.png`

  puts "DONE"
end
