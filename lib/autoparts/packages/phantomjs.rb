module Autoparts
  module Packages
    class PhantomJS < Package
      name 'phantomjs'
      version '1.9.1'
      description 'PhantomJS: A headless WebKit scriptable with a JavaScript API'
      source_url 'https://phantomjs.googlecode.com/files/phantomjs-1.9.1-linux-x86_64.tar.bz2'
      source_sha1 '8ab4753abd352eaed489709c6c7dd13dae67cd91'
      source_filetype 'tar.bz2'

      def install
        Dir.chdir('phantomjs-1.9.1-linux-x86_64') do
          prefix_path.mkpath
          execute "mv * #{prefix_path}"
        end
      end
    end
  end
end
