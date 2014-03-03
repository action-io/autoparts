module Autoparts
  module Packages
    class GoogleAppEngine < Package
      name 'googleappengine'
      version '1.9.0'
      description 'Google App Engine Python/PHP: A CLI for managing Google App Engine cloud services for Python and PHP'
      source_url 'https://commondatastorage.googleapis.com/appengine-sdks/featured/google_appengine_1.9.0.zip'
      source_sha1 '923a7f99e058d93408d3940e0307bdf2769b7480'
      source_filetype 'zip'

      def install
        prefix_path.mkpath
        Dir.chdir(extracted_archive_path + 'google_appengine') do
          execute 'cp', '-r', '.', prefix_path
        end
      end

      def post_install
        bin_path.mkpath
        Dir[prefix_path + "*.py"].each do |p|
          basename = File.basename(p)
          execute 'ln', '-s', prefix_path + basename, bin_path + basename
        end
      end
    end
  end
end
