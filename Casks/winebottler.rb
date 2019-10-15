cask 'winebottler' do
  version '4.0.1.1'
  sha256 '08bc65c61268220022be0db864d45d3c3181ad8553c4fd343a2462eea8082781'

  # github.com was verified as official when first introduced to the cask
  url "https://github.com/nrlquaker/homebrew-personal-binaries/raw/master/Bin/WineBottlerCombo_#{version}.dmg"
  name 'WineBottler'
  homepage 'https://winebottler.kronenberg.org/'

  app 'WineBottler.app'
  app 'Wine.app'

  zap trash: [
               '~/Library/Application Support/Wine',
               '~/Library/Application Support/WineBottler',
               '~/Library/Preferences/org.kronenberg.Wine.plist',
               '~/Library/Preferences/org.kronenberg.WineBottler.plist',
               '~/Library/Preferences/org.kronenberg.Winetricks.plist',
               '~/Library/Caches/org.kronenberg.Wine',
               '~/Library/Caches/org.kronenberg.WineBottler',
               '~/Library/Caches/org.kronenberg.Winetricks',
             ]
end
