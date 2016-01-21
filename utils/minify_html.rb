#!/usr/bin/ruby
if __FILE__ == $0

  Dir['_site/**/*.html'].each do |file|
      file_to_strip = IO.readlines(file)
      fout = File.open("temp.html", "w")
      in_code_block = false
      file_to_strip.each do |line|
          if line.include?("<code>") or line.include?("<pre>")
              in_code_block = true
          end
          if (not in_code_block and not line.strip.empty?) or in_code_block
              fout << line
          end
          if line.include?("</code>") or line.include?("</pre>")
              in_code_block = false
          end
      end
      fout.close
      File.rename("temp.html", file)
  end
end
