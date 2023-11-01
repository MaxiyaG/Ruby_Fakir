#!/usr/bin/env ruby

=begin
Fakir Game in Ruby to learn Basic Ruby
=end

require 'io/console'

class Fakir
    
    #Méthode Fakir_game 
    
    def Fakir_game
        
        #Initialisation
        i=0 
        rand_nb = rand(101)
        nb_tour = 5
        
        #Boucle du jeu du Fakir
        while true
            i+=1
            nb_saisi = -1
            
            #Cas : Execution au 1er tour
            if i==1
                puts "Je pense a un nombre en 0 et 100 inclu ! Je pense a quelle nombre ?"
            end 
            
            #Cas : Execution si le joueur Perd
            if i==6
                puts "Vous avez perdu ! \nJ'ai penser au nombre : #{rand_nb}\nVoulez vous rejouer (O : Oui / Non : N'importe quelle touche) ?"
                choix =  gets.chomp 
                if choix == "o" || choix == "O"
                   puts "Je vais regenerer un nombre et nous allons rejouer !"
                   Fakir_game
                else 
                    puts "Au revoir"
                    exit
                end
            end
            
            #Saisie Controller
             while nb_saisi.to_i > 100 || nb_saisi.to_i < 0 || !nb_saisi.match?(/^\d+$/)
                puts "Veuillez entrer un nombre entre 0 et 100 inclus (q : quitter) : "
                nb_saisi = gets.chomp

                if nb_saisi == "q" || nb_saisi == "Q"
                    puts "Au revoir"
                    exit
                end
            end
            
            #Vérification du nombre saisie avec la Valeur générer
            if nb_saisi.to_i > rand_nb
                puts "Le nombre que je pense est plus PETIT ! \nIl vous reste #{nb_tour-i} essaies"
            elsif nb_saisi.to_i < rand_nb
                puts "Le nombre que je pense est plus GRAND ! \nIl vous reste #{nb_tour-i} essaies"
            else
                #Victoire
                puts "Félicitation ! \nJ'ai penser au nombre #{rand_nb} \nVoulez vous rejouer (O : Oui / Non : N'importe quelle touche) ?"
                choix =  gets.chomp 
                if choix == "o" || choix == "O"
                   puts "Je vais regenerer un nombre et nous allons rejouer !"
                   Fakir_game
                else 
                    puts "Au revoir"
                    exit
                end
            end
        end
    end
    
end

if __FILE__ == $0
  puts "Bienvenue au jeu du Fakir\nSi vous voulez jouer, appuyez sur n'importe quelle touche sur le clavier.\nSi vous voulez quitter, appuyez sur 'q'."

  choix = STDIN.getch
  if choix == 'q'|| choix == 'Q'
    exit
  else
      main = Fakir.new
      main.Fakir_game
  end
end
