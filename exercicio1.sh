cat <<EOF > exercicios_execucao.sh
mkdir criado_via_script

touch criado_via_script/arquivo-gerado.txt

echo "um teste no arquivo com dado" > arquivo_com_dado.txt
echo "Estamos aprendendo a manipular" >> criado_via_script/mais_um_arquivo.txt
echo "arquivos na aula de devops" >> criado_via_script/mais_um_arquivo.txt
echo "-------------------------------"
cat criado_via_script/arquivo_com_dado.txt
echo "-------------------------------"
cat criado_via_script/mais_um_arquivo.txt
EOF

sleep 3

chmod +x aula-script.sh

sleep 3

./exercicio_execucao.sh