# Projeto AWS Lambda + DynamoDB + Terraform

🚀 Este projeto provisiona uma tabela no DynamoDB e uma função Lambda na AWS utilizando o Terraform, permitindo que a função insira um dado na tabela.

## Pré-requisitos

Antes de começar, você precisará ter o seguinte instalado em sua máquina:

- [AWS CLI](https://aws.amazon.com/cli/)
- [Terraform](https://www.terraform.io/downloads.html)

Você também precisará de um arquivo de credenciais da AWS. Consulte [este link](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-files.html) para obter mais informações.

## Como usar

1. Clone este repositório em sua máquina local.
2. Execute o comando `terraform init` para inicializar o diretório de trabalho do Terraform.
3. Execute o comando `terraform apply` para provisionar os recursos AWS. Confirme com `yes` quando solicitado.
4. A saída do `terraform apply` exibirá o nome da função Lambda criada. Anote este nome.
5. Vá para o [console do DynamoDB](https://console.aws.amazon.com/dynamodb/) e encontre a tabela com o nome especificado no arquivo `dynamodb.tf`.
6. Clique na guia **Itens** e verifique se um novo item foi inserido.

## Limpeza

Após terminar de utilizar os recursos, execute o comando `terraform destroy` para destruí-los.

## Licença

Este projeto está licenciado sob a licença MIT. Consulte o arquivo [LICENSE](LICENSE) para obter mais detalhes.