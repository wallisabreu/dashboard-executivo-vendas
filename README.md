# 📊 Dashboard Executivo de Vendas

## 📌 Descrição
Este projeto apresenta uma solução completa de análise de vendas, abrangendo desde a modelagem de dados até a visualização interativa em um dashboard no Power BI. O objetivo é demonstrar habilidades em banco de dados, engenharia de dados e business intelligence.

## 🎯 Objetivos
- Modelar um banco de dados relacional para um sistema de vendas.
- Implementar um pipeline de dados com as camadas **Raw**, **Trusted** e **Analytics**.
- Desenvolver um **modelo estrela** para análise.
- Criar um **dashboard executivo** para suporte à tomada de decisão.

## 🛠️ Tecnologias Utilizadas
- **PostgreSQL** – Criação e manipulação do banco de dados.
- **SQL** – Scripts de criação e carga de dados.
- **Power BI** – Visualização e análise dos dados.
- **GitHub** – Versionamento e documentação.
- **Draw.io / dbdiagram** – Modelagem MER e DER.

## 🗂️ Arquitetura de Dados

Sistema Transacional → Raw → Trusted → Analytics → Power BI

### 🔹 Camadas

| Camada | Descrição |
|-------|-----------|
| **Raw** | Dados brutos extraídos do sistema transacional. |
| **Trusted** | Dados tratados e padronizados. |
| **Analytics** | Modelo dimensional (estrela) otimizado para análise. |

## 🧱 Modelagem de Dados

### 🔹 Entidades Principais
- **Clientes**
- **Categorias**
- **Produtos**
- **Vendas**
- **Itens_Venda**

### 🔹 Modelo Estrela
- **Fato:** `fato_vendas`
- **Dimensões:**
  - `dim_cliente`
  - `dim_produto`
  - `dim_tempo`

## 📊 Indicadores do Dashboard

| Indicador | Descrição |
|----------|-----------|
| **Faturamento Total** | Soma do valor total das vendas. |
| **Vendas por Cliente** | Distribuição das vendas entre os clientes. |
| **Ticket Médio por Produto** | Valor médio das vendas por produto. |
| **Evolução do Faturamento** | Tendência temporal do faturamento. |

### 📚 Documentação Adicional

- 📖 [Dicionário de Dados](docs/dicionario_de_dados_dashboard_vendas.pdf)

### 🔹 Medidas DAX Utilizadas

```DAX
-- Faturamento Total
faturamento_total = SUM(fato_vendas[valor_total])

-- Quantidade Total
quantidade_total = SUM(fato_vendas[quantidade])

-- Total de Vendas
total_vendas = DISTINCTCOUNT(fato_vendas[id_venda])

-- Ticket Médio
ticket_medio = DIVIDE([faturamento_total], [total_vendas])

## 👤 Autor

**Patrick Wallis Abreu Macedo**  
Analista de Banco de Dados | Estudante de Engenharia de Software  

🔗 **LinkedIn:** https://www.linkedin.com/in/patrick-abreu-macedo-2087a1130/  
🔗 **GitHub:** https://github.com/wallisabreu

---

## 📄 Licença

Este projeto está licenciado sob a **Licença MIT**.
 
Consulte o arquivo [LICENSE](LICENSE) para mais detalhes.
