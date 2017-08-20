cask 'winebottler' do
  version '1.8.2'
  sha256 'a82de7404802e1d422b7ee9fb9b3a5444fe922736ea5f8eb182141fad46b3fea'

  # github.com was verified as official when first introduced to the cask
  url "https://github.com/nrlquaker/homebrew-personal-binaries/raw/master/Bin/WineBottlerCombo_#{version}.dmg"
  name 'WineBottler'
  homepage 'http://winebottler.kronenberg.org/'

  app 'WineBottler.app'
  app 'Wine.app'
end
