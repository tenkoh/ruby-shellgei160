# unfileというファイルがなければ、ファイルを作成する(touchだけ)
require 'fileutils'

filename = 'unfile'
FileUtils.touch(filename) unless File.exist?(filename)
