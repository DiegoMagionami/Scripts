SET @oldsite='oldsite.com'; 
SET @newsite='newsite';

UPDATE wp_options SET option_value = replace(option_value, @oldsite, @newsite) WHERE option_name = 'home' OR option_name = 'siteurl';
UPDATE wp_posts SET post_content = replace(post_content, @oldsite, @newsite), guid = replace(guid, @oldsite, @newsite);
UPDATE wp_links SET link_url = replace(link_url, @oldsite, @newsite);
UPDATE wp_postmeta SET meta_value = replace(meta_value, @oldsite, @newsite);

UPDATE wp_blogs SET domain = replace(domain, @oldsite, @newsite);
UPDATE wp_site SET domain = replace(domain, @oldsite, @newsite);
UPDATE wp_sitemeta SET meta_value = replace(meta_value, @oldsite, @newsite) WHERE meta_key = 'home' OR meta_key = 'siteurl';