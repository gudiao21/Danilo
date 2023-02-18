cat <<EOF > exercicios_execucao.sh
mkdir criado_via_script

touch arquivo-gerado.txt

echo "um teste no arquivo com dado" > arquivo_com_dado.txt
echo "Estamos aprendendo a manipular" >> mais_um_arquivo.txt
echo "arquivos na aula de devops" >> mais_um_arquivo.txt
echo "-------------------------------"
cat arquivo_com_dado.txt
echo "-------------------------------"
cat mais_um_arquivo.txt
EOF
chmod +x aula-script.sh
./aula-script.sh