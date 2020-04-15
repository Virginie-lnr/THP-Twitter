
# Il est ensuite très facile d'appeler les données du hash ENV, par exemple là je vais afficher le contenu de la clé TWITTER_API_SECRET

# ligne très importante qui appelle la gem.
require 'twitter'
# n'oublie pas les lignes pour Dotenv ici…
require 'dotenv'# Appelle la gem Dotenv
Dotenv.load('.env') # Ceci appelle le fichier .env (situé dans le même dossier que celui d'où tu exécute app.rb)
# et grâce à la gem Dotenv, on importe toutes les données enregistrées dans un hash ENV

# quelques lignes qui appellent les clés d'API de ton fichier .env
client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
  config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]
  config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
  config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
end

# ligne qui permet de tweeter sur ton compte
client.update('Que la vie est dure, quand on est une petite pata-te 🎶')

# pour tester avec rspec :
# def login_twitter
#     client = Twitter::REST::Client.new do |config|
#         config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
#         config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]
#         config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
#         config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
#       end
# return client
# end