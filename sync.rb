# encoding: UTF-8

def append_content_from(target_dir, file_path, order="DES")
  queue = []

  Dir.foreach(target_dir) do |file_name|
    next if file_name == "." or file_name == ".."
    queue << "#{target_dir}/#{file_name}"
  end

  if order == "DES"
    queue.sort!
  elsif order == "ASC"
    queue.sort!.reverse!
  end

  queue.each do |path|
    File.open(file_path, "a") do |f|
      File.open(path, "r") do |source_file|
        f.write(source_file.read)
        f.puts @string
      end
    end
  end
end

def sync_github
  # Fetch remote resources
  `git pull origin dev`

  # Create README File Normal Version
  `rm README.md`
  append_content_from("./base", "./README.md")
  append_content_from("./log", "./README.md")

  # Update remote resources
  `git add --all`
  `git commit -m "Update"`
  `git push origin dev`
end

sync_github
