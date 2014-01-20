module Autoparts
  module Packages
    class Ack < Package
      name 'ack'
      version '2.08'
      description 'Ack: A tool like grep, optimized for programmers'
      source_url 'http://beyondgrep.com/ack-2.08-single-file'
      source_sha1 'c0fa19ba31ecc1afe186c5a061c1361ae2a258f3'
      source_filetype 'pl'

      def install
        bin_path.mkpath
        execute 'mv', archive_filename, ack_executable_path
        execute 'chmod', '0755', ack_executable_path
        execute 'ln', '-s', ack_executable_path, (bin_path + 'ack-grep')
      end

      def ack_executable_path
        bin_path + 'ack'
      end
    end
  end
end
