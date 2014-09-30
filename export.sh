# Run from jekyll dir
Dir['../cendres/articles/*.txt'].sort.each do |path|
  file = File.basename(path)
  new_file = "_posts/#{file.sub(/\.txt\z/, '.md')}"
  text = File.read(path)
  headers, md = text.split("\n\n", 2)
  raise "No title" unless headers =~ /^title: (.+)$/
  title = $1
  File.write(new_file, "---\n layout: post\n title: #{title}\n---\n\n#{md}")
end