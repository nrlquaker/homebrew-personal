cask 'png2icns' do
  version :latest
  sha256 :no_check

  url 'https://github.com/bitboss-ca/png2icns/archive/master.zip'
  name 'png2icns'
  homepage 'https://github.com/bitboss-ca/png2icns'

  binary 'png2icns-master/png2icns.sh', target: 'png2icns'
end
