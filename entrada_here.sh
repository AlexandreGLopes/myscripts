#! /bin/bash

echo -n "Digite o nome do arquivo ou pasta que voce deseja saber se existe neste diretorio: "	#echo para mostrar ao usuario o que digitar
read nome					#Le a entrada do usuario coloca dentro da variavel "nome"
ls > temp.txt					#Executa o comando 'ls' e redireciona sua saida para um arquivo "txt", sobreescrevendo os dados se o arquivo ja existir
while read var					#inicia um loop que vai colocar dento de "var" linha a linha do arquivo "txt", apontado no final da estrutura while
	do					#inicio dos camandos de while
		if [ "$var" = "$nome" ]		#estrutura de decisao "if" que compara os conteudos das strings "var" e "nome"
			then			#inicio dos comandos da estrutura "if"
				achei=1		#se a igualdade for comprovada cria uma variavel "achei" com valor "1"
			fi			#final da estrutura de decisao "if"
		done <<< "$(cat temp.txt)"	#final da estrutura while, cat para ler linha a linha do "txt" e para executar o loop na mesma sessao do shell

if [ "$achei" = "1" ]				#estrutura de decisao "if" para verificar se "achei" contem "1"
	then					#inicio dos comandos de "if": "se sim:"
		echo "achei o termo digitado nesta pasta"	#echo indicando positivo para "achei=1"
	else							#else ("se nao:") da estrutura de decisao
		echo "Nao achei o termo digitado nesta pasta"	#echo indicando negativo para "achei=1"
	fi							#final da estrutura de decisao "If"

rm temp.txt					#removendo o arquivo "txt" inicialmente criado
