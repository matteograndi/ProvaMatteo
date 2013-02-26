task :default => ["ciao"]
  
SRC = FileList['*.c']
OBJ = SRC.ext('o')
 
rule '.o' => '.c' do |t|
  sh "cc -c -o #{t.name} #{t.source}"
end
 
file "ciao" => OBJ do
  sh "cc -o ciao #{OBJ}"
end
   
# File dependencies go here ...
file 'main.o' => ["main.h", "primo.h", "primo.o", "secondo.h", "secondo.o", "terzo.h", "terzo.o"] 


file 'pr.o' => ["primo.c", "primo.h"]
file 'sec.o' => ["secondo.c", "secondo.h"]
file 'ter.o' => ["terzo.c", "terzo.h"]



desc "Cruise Control build task"
task :cruise =>['db:migrate', :test,:spec, 'test:coverage'] do
  ENV['DEPLOY_TO']='staging'
  system("cap deploy migrate restart cleanup")
end
