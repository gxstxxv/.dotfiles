function javar
	mvn archetype:generate -DgroupId=com.gxstxxv -DartifactId=$argv[1] -Dpackage=$argv[2] -DarchetypeArtifactId=maven-archetype-quickstart -DinteractiveMode=false
end 

