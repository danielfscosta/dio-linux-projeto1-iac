# dio-linux-projeto1-iac
Script do primeiro desafio do curso Linux do Bootcamp AWS da DIO. Implementa exemplo de Infraestrutura como Código (IaC) para criação de uma estrutura de usuários, grupos, diretórios e permissões, de acordo com o especificado no enunciado.

## Enunciado:

### Diretórios:
  /publico;
  /adm;
  /ven;
  /sec;
  
### Grupos:
  GRP_ADM;
  GRP_VEN;
  GRP_SEC;
  
### Usuários:

#### Departamento administrativo:
    
   carlos;
   maria;
   joao;
    
#### Departamento de vendas:
   debora;
   sebastiana;
   roberto;
    
## Definições:
  - Todo provisionamento deve ser feito em um arquivo do tipo Bash Script;
  - O dono de todos os diretórios criados será o usuário root;
  - Todos os usuários terão permissão total dentro do diretório /publico;
  - Os usuarios de cada grupo terão permissão total dentro de seu respectivo diretório;
  - Os usuários não poderão ter permissão de leitura, escrita e execução em diretórios de departamentos que eles não pertencem;
