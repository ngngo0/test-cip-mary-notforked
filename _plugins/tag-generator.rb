# sourced from https://www.untangled.dev/2020/06/02/tag-management-jekyll/

#The first lines bind this plugin to run whenever the post_write hook at posts scope is triggered. posts scope is also known as container in Jekyll docs. What does this mean? This plugin runs whenever a post file changes on disk, i.e. whenever you save a post file.
Jekyll::Hooks.register :posts, :post_write do |post|
    #The script then builds an all_existing_tags variable. This is a list of the names of the files under _tags(lines 6-8).
    all_existing_tags = Dir.entries("tags")
    .map { |t| t.match(/(.*).md/) }
    .compact.map { |m| m[1] }
    
    #Lines 11-14 call generate_tag_file for each tag in the file just saved. generate_tag_file is called only when that tag does not exist already in all_existing_tags.
    tags = post['tags'].reject { |t| t.empty? }
    tags.each do |tag|
    generate_tag_file(tag) if !all_existing_tags.include?(tag)
    end
end



# The remaining lines, lines 12-21, are the generate_tag_file function, which:
# receives a tag as paramter; the tag name
# generates new tag markdown file under _tags/
# generates new feed XML file under _tags/
def generate_tag_file(tag)
    # generate tag file
    File.open("tags/#{tag}.md", "wb") do |file|
    file << "---\nlayout: tags\ntag-name: #{tag}\npermalink: /tags/#{tag}/\n---\n" 
    end
    # generate feed file
    File.open("feeds/#{tag}.xml", "wb") do |file|
    file << "---\nlayout: feed\ntag-name: #{tag}\n---\n"
    end
end